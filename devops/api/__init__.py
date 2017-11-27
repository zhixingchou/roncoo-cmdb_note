# coding: utf-8
from flask import Flask            #  WSGI 应用程序
from flask_jsonrpc import JSONRPC
import sys

reload(sys)
sys.setdefaultencoding('utf-8')         # 设置默认encoding方式

app = Flask(__name__)
jsonrpc = JSONRPC(app, '/api')

import login
import power
import role
import user
import selectd
import idc
import cabinet
import server
import zabbix
import zbhost
import zabbix_api
import cobbler
import zabbix_Graph_api
import switch
import jigui
import report
