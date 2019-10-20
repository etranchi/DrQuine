#!/usr/local/bin/python3
COUCOU = "COUCOU"
AUREVOIR = "AUREVOIR"
ADIEU = "ADIEU"
def makeGrace():
	return '#!/Users/etranchi/.brew/Cellar/python/3.7.3/bin/python3\nCOUCOU = "COUCOU"\nAUREVOIR = "AUREVOIR"\nADIEU = "ADIEU"\ndef makeGrace():\n\treturn %r\nfp = open("Grace_kid.py","w+")\nfp.write(makeGrace()%%makeGrace())'
fp = open("Grace_kid.py","w+")
fp.write(makeGrace()%makeGrace())