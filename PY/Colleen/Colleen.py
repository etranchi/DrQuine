#!/Users/etranchi/.brew/Cellar/python/3.7.3/bin/python3
def getString():
	#coucou
	return '#!/Users/etranchi/.brew/Cellar/python/3.7.3/bin/python3\ndef getString():\n\t#coucou\n\treturn %r\na=getString();print(a%%a)'
a=getString();print(a%a)
