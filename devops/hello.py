#coding:utf-8
from  . import app  

@app.route("/")
def hello():
   return "hello world!"
