import random
from Bio import SeqIO

def main(input, output):
	
	reads = []

	random.seed(1701)
	
	with open(input, "r") as handle:
		for record in SeqIO.parse(handle, "fastq"):
			scores = range(31, 41)
			quality = [random.choice(scores) for i in range(len(record.seq))]
			record.letter_annotations["phred_quality"] = quality
			reads.append(record)
			
	with open(output, "w") as handle:
		SeqIO.write(reads, handle, "fastq")

if __name__ == '__main__':

	main(snakemake.input[0], snakemake.output[0])
