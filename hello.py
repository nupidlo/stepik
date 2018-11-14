def app(environ, start_response):
	status = '200 OK'
	headers = [
		('Content-Type', 'text/plain')
	]
	resp = environ['QUERY_STRING'].split('&')
	start_response(status, headers)
	return ["\n".join(resp)]
