# Flask is a web framework for Python, to create web apps of differing levels of complexity 
# Flask can be used to create a backend web app that can run on a server, responding to HTTP requests 

# HTTP Request - Interaction between a user / client and a web server 
# A way of sending and retrieving data across a web server 
# GET  - request data 
# POST - sending data
# PUT - Updates data
# DELETE - Deletes data 

# To use flask we need to install it with pip `pip install flask`

# Differentiate between the flask package and my import
from flask import Flask

# To tell python we are making a flask app app = Flask(_ _ name _ _)
app = Flask(__name__)

# Will trigger this function when it detects /hello
@app.route("/hello")
def hello_world():
    # This function will trigger when the flask app detects someone accessing /hello
    return "Hello World!" # Send this as text to our browser, for it to render

@app.route("/test")
def test():
    return "Test!"

# We can use dynamic URL variables to pull data from our request
# To trigger this function "/shop/any_id_or_text_or_number"
@app.route("/shop/<id>")
def shop_page(id):
    return f"Page for item {id}"

@app.route("/sendNum/<num>")
def num_request(num):
    return f"{num} times two is {does_thing(num)}"

def does_thing(num):
    return int(num) * 2

# Flask does support returning HTML, render_template. You create html files and flask can render that file when a function is triggered 

# Run our app
if __name__ == "__main__":
    # host is our IP address, 0.0.0.0 is localhost (this machine) 
    # port 
    app.run(debug=True, host="0.0.0.0", port=5000)

# Up to this point running a script has finished when we get to the end 
# With flask we are running a backend app that is waiting and listening for input 