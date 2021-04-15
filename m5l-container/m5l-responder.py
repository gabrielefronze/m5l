#!/usr/bin/env python3

from flask import Flask, request
import subprocess
import argparse

app = Flask('m5l-responder')
port = 8888
command = "echo"
whitelist = ['drupal.m5l']

def valid_ip():
    if request.remote_addr in whitelist:
        return True
    return False

@app.route('/process', methods=['POST'])
def processFile():
    if valid_ip:
        if request.json:
            if 'file_path' in request.json:
                try:
                    result = subprocess.check_output('{} {}'.format(command, request.json['file_path']), shell=True)
                    return "Success!", 200
                except subprocess.CalledProcessError as e:
                    return "ERROR: {}".format(e), 404
            else:
                return "Missing argument in request", 404
        else:
            return "Missing argument in request", 404
    else:
        return "Unauthorized", 403

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Expose specific commands via a REST API.')
    parser.add_argument("command", help="The bash command to expose.", default="echo")
    args = parser.parse_args()
    if args.command:
        command = args.command
    app.run(host='0.0.0.0', port=port)