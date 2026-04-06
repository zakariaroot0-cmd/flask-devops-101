from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return """
    <h1>Hello from your first DevOps Flask website! 🚀</h1>
    <p>Congratulations — you just built a containerized web app!</p>
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)