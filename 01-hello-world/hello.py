from flask import Flask
app = Flask(__name__)

@app.route('/')
def index():
    return "<h1>Hallo, Welt!</h1>"

@app.route('/greet_user/<name>')
def greet_user(name):
	return '<h1>Hallo, {0}!</h1>'.format(name)

@app.route('/bye_user/<name>')
def bye_user(name):
	return '<h1>Tschau, {0}!</h1>'.format(name)




if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)




