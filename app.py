from flask import Flask, render_template, request, redirect, url_for
from configs.Database import Database

app = Flask(__name__)

@app.route('/<path:filename>')
def server_static(filename):
    return app.send_static_file(filename)

@app.route('/')
def home():
   ## db = Database()
    return render_template('index.html')







if __name__ == '__main__':
    app.run(debug=True)
