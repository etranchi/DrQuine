#!/Users/etranchi/.brew/Cellar/python/3.7.3/bin/python3
def grace():
	COUCOU = "COUCOU"
	AUREVOIR = "AUREVOIR"
	def makeGrace():
		return '#!/Users/etranchi/.brew/Cellar/python/3.7.3/bin/python3\ndef grace():\n\tCOUCOU = "COUCOU"\n\tAUREVOIR = "AUREVOIR"\n\tdef makeGrace():\n\t\treturn %r\n\tfp = open("Grace_kid.py","w+")\n\tfp.write(makeGrace()%%makeGrace())\nx = grace\nif __name__ == "__main__":\n\tx()\n'
	fp = open("Grace_kid.py","w+")
	fp.write(makeGrace()%makeGrace())
x = grace
if __name__ == "__main__":
	x()
