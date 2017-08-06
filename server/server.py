from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('hello.html')     

@app.route('/yo')
def yo():
    return "yo"  

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=80)   