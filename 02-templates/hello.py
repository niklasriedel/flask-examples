from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/greet_user/<name>')
def greet_user(name):
    return render_template('greet_user.html', name=name)

@app.route('/bye_user/<name>')
def bye_user(name):
    return render_template('bye_user.html', name=name)

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)

