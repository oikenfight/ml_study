# coding=utf-8

from flask import request, redirect, url_for, render_template
from flaskr import app
from flaskr.botengine import make_reply


# メイン処理 --- フォームの値で分岐する --- (*2)
@app.route('/')
def main():
    return render_template('index.html')


# ユーザーの入力に対して返答を返す処理 --- (*3)
@app.route('/api_say', methods=['POST'])
def api_say():
    txt = request.form.get('txt')
    if txt == "":
        return
    res = make_reply(txt)
    return res

