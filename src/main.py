from flask import Flask

app = Flask(__name__)


@app.route('/')
def index():
    return 'Hello from Flask!'

@app.route('/test')
def test():
    return 'Hello from Jenkins!'


app.run(host='0.0.0.0', port=4567)
