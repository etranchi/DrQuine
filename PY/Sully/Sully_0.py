#!/Users/etranchi/.brew/Cellar/python/3.7.3/bin/python3
import os
import sys
import subprocess
VAL = 0
exist = os.access("Sully_5.py", os.F_OK)
if exist:
	VAL -= 1
if VAL < 0:
	sys.exit()
next_file = "Sully_" + str(VAL) + ".py"
fp = open(next_file, "w+")
os.chmod(next_file, 0o777)
str = '#!/Users/etranchi/.brew/Cellar/python/3.7.3/bin/python3\nimport os\nimport sys\nimport subprocess\nVAL = %d\nexist = os.access("Sully_5.py", os.F_OK)\nif exist:\n\tVAL -= 1\nif VAL < 0:\n\tsys.exit()\nnext_file = "Sully_" + str(VAL) + ".py"\nfp = open(next_file, "w+")\nos.chmod(next_file, 0o777)\nstr = %r\nfp.write(str%% (VAL, str))\nfp.close()\nsubprocess.call("./" + next_file)\n'
fp.write(str% (VAL, str))
fp.close()
subprocess.call("./" + next_file)
