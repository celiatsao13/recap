#!/bin/bash
cd "/Users/tiffanykuo/Downloads/Game 1"
python3 -c "
import http.server, socketserver, os
os.chdir('/Users/tiffanykuo/Downloads/Game 1')
class Handler(http.server.SimpleHTTPRequestHandler):
    pass
with socketserver.TCPServer(('', 3458), Handler) as httpd:
    httpd.serve_forever()
"
