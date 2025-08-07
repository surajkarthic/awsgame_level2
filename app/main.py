from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    # A simple greeting
    return "Hello from inside the Docker Container!\n"

if __name__ == "__main__":
    # The app will run on port 5000 inside the container
    app.run(host="0.0.0.0", port=5000)
