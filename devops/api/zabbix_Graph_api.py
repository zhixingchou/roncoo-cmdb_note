#!/usr/bin/env python
# -*- coding: utf-8 -*-
from . import app, jsonrpc
import util
import json, traceback
import MySQLdb
import datetime
import cookielib, urllib2, urllib
import smtplib


class ZabbixGraph():
    def __init__(self, url="http://192.168.2.22:6080/index.php", name="Admin", password="zabbix"):
        self.url = url
        self.name = name
        self.passwd = password
        # 初始化的时候生成cookies
        cookiejar = cookielib.CookieJar()
        urlOpener = urllib2.build_opener(urllib2.HTTPCookieProcessor(cookiejar))
        values = {"name": self.name, 'password': self.passwd, 'autologin': 1, "enter": 'Sign in'}
        data = urllib.urlencode(values)
        request = urllib2.Request(url, data)
        try:
            urlOpener.open(request, timeout=10)
            self.urlOpener = urlOpener
        except urllib2.HTTPError, e:
            print e

    def GetGraph(self, url="http://192.168.2.22:6080/charts.php",
                 values={'width': 800, 'height': 200, 'graphid': '555', 'stime': '20160907090409', 'period': 3600},
                 image_dir="/tmp"):
        data = urllib.urlencode(values)
        request = urllib2.Request(url, data) # 将dict或者包含两个元素的元组列表转换成url参数。例如 字典{'name': 'dark-bull', 'age': 200}将被转换"name=dark-bull&age=200"
        url = self.urlOpener.open(request)
        image = url.read()
        imagename = "%s/%s_%s.jpg" % (image_dir, values["graphid"], values["stime"])
        f = open(imagename, 'wb')
        f.write(image)
        return '1'


if __name__ == "__main__":
    graph = ZabbixGraph()
    values = {'width': 800, 'height': 200, 'graphid': '555', 'stime': '20160907090409', 'period': 3600}
    graph.GetGraph("http://192.168.2.22:6080/charts.php", values, "/tmp")
