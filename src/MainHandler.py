import tornado.ioloop
import tornado.web

import json
from NLTKParser import NLTKParser
Parser = NLTKParser()

class MainHandler(tornado.web.RequestHandler):
	def post(self):
		out = {"terms":[]}
		try:
			data = json.loads(self.request.body)
			if "sentence" not in data:
				print("No sentence in given data")
        		raise ValueError("No sentence in given data")
			response = Parser.NounsParser(data["sentence"])
			out["terms"] = response
			self.write(out)
		except ValueError, e:
			print("throw an error: %s" + str(e))
			self.write(out)
	
	def get(self):
		out = {"terms":[]}
		self.write(out)

def startApp():
	return tornado.web.Application([
		(r"/api/getnouns", MainHandler)
	])

if __name__ == "__main__":
	app = startApp();
	app.listen(8888)
	print("listening at port 8888...")
	tornado.ioloop.IOLoop.current().start()