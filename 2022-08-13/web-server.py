from flask import Flask, Response, jsonify, request


app = Flask(__name__, instance_relative_config=True)


@app.route('/', methods=['post'])
def post():
    sent_data = None
    
    content_type = request.headers.get('Content-Type')
    if content_type == 'application/json':
        sent_data = request.json
    elif content_type in ['application/x-www-form-urlencoded', 'multipart/form-data']:
        sent_data = request.form

    files = dict()
    for key, file in request.files.items():
        files[key] = file.filename

    return jsonify({"Content-Type": request.content_type, "sent-data": sent_data, "files": files})


if __name__ == "__main__":
    app.run(debug=True, host='localhost', port=8080)
