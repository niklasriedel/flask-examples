from flask import Flask, render_template, request
app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    name = None
    alter = ''
    if request.method == 'POST' and 'name' in request.form:
        name = request.form['name']
        alter = request.form['alter']
    return render_template('index.html', name=name, alter=alter)

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)

