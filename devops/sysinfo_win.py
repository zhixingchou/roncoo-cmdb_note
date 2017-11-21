#!/usr/bin/python
# coding:utf-8


import json
import subprocess
import psutil
import socket
import time
import re
import platform
import requests
import wmi 


device_white = ['eth0','eth1', 'eth2', 'eth3', 'em1']

headers = {"Content-Type": "application/json"}


def get_hostname():
    return socket.gethostname()




def network(): 
    c = wmi.WMI ()     
    #获取MAC和IP地址 
    for interface in c.Win32_NetworkAdapterConfiguration (IPEnabled=1): 
        print "MAC: %s" % interface.MACAddress 
    for ip_address in interface.IPAddress: 
        print "ip_add: %s" % ip_address 
    
	ret = {}
	ret['ip'] = ip_address
	ret['mac_address'] = interface.MACAddress
	return ret



def get_cpuinfo():
	print get_cpuinfo

def get_disk():
    return psutil.disk_usage('C:\\').total/1024/1024/1024
    print get_disk

def get_Manufacturer():
	return platform.machine()
	print get_Manufacturer

def get_rel_date():
	print get_rel_date

def get_os_version():
	return platform.platform()
	print get_os_version

def get_Memtotal():
    return psutil.virtual_memory().total/1024/1024
    print get_Memtotal

def run(): 
    data = {}
    res = {}
    data['hostname'] = get_hostname()
    data.update(network())
    get_cpuinfo()
    data['server_cpu'] = get_cpuinfo()
    data['server_disk'] = get_disk()
#    data.update( get_Manufacturer())
    data['manufacturers'] = get_Manufacturer()
    data['manufacture_date'] = get_rel_date()
    data['os'] = get_os_version()
    data['server_mem'] = get_Memtotal()
    res['params']=data
    res['jsonrpc'] = "2.0"
    res["id"] = 1
    res["method"]= "server.radd"
 #   print res 
 #   for k,v in data.iteritems():
 #       print k, v
    send(res)

def send(data):
    url = "http://192.168.2.159:2000/api"
    r = requests.post(url, headers=headers,json=data)
    print r.status_code
    print r.content


if __name__ == "__main__":
   run()
