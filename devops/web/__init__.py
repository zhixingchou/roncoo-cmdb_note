# coding: utf-8
from flask import Flask
import sys
reload(sys)
sys.setdefaultencoding('utf-8')
# 创建一个app实例
app = Flask(__name__)

# demo（/ -- 首页views响应到templates）
import demo,public,login

