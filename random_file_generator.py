import random
import argparse
import os
file_to_read="dream_within_a_dream.txt"
dream_lines = open(file_to_read,'r').readlines()
def random_line():
	n = random.randint(0,len(dream_lines)-1)
	return n

def generate_random_file(filename = "random.txt"):
	if os.path.exists(filename):
		os.remove(filename)
	with open(filename,"a") as outputfile:
		n = random_line()+2
		for i in range(n):
			line = dream_lines[random_line()]
			outputfile.write(line)
if __name__ == "__main__":
	parser = argparse.ArgumentParser(description='Process some integers.')
	parser.add_argument('--filename', action="store", default="random.txt",
                   help='of the random file to generate')
	args = parser.parse_args()
	generate_random_file(args.filename)




