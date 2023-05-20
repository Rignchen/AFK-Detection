import zipfile
from os import listdir, getcwd, remove

def search(zip,unwanted:list=[],path:str|None = None,is_first:bool=True):
	global zip_name
	unwanted += ["zip.py" + zip_name + ".zip"]
	all_dir = listdir(path)
	if is_first:
		for a in unwanted:
			if a in all_dir:all_dir.remove(a)
	if path != None and not path.endswith(("/","\\")): path += "/"
	if path == None: path = ""
	for a in all_dir:
		name = path + a
		try:
			listdir(name)
			search(zip,[],name,False)
		except NotADirectoryError:
			zip.write(name)

zip_name = getcwd().split("\\")[-1]

try:remove(zip_name + ".zip")
except FileNotFoundError:pass

if not zip_name + ".zip" in listdir():
	zip = zipfile.ZipFile(zip_name + ".zip", "w")
	search(zip)
	zip.close()
else:
	print("Error, zip not deleted")
