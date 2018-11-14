def app(environ, start_response):
	status = '200 OK'
	headers = [
		('Content-Type', 'text/plain')
	]
	resp = [bytes(i + '\n', 'ascii') for i in environ['QUERY_STRING'].split('&')]
	start_response(status, headers)
	return resp

#import multiprocessing

#bind = "0.0.0.0:8000"
#workers = multiprocessing.cpu_count() * 2 + 1
