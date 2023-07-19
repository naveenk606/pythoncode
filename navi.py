from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        username = request.form.get('username')
        password = request.form.get('password')
        
        # Perform authentication logic here
        if username == 'admin' and password == 'password':
            message = 'Authentication successful!'
        else:
            message = 'Authentication failed.'
        
        return render_template('result.html', message=message)
    
    return render_template('login.html')

if __name__ == '__main__':
    app.run()

