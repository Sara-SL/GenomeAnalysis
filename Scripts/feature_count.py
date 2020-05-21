import re
textfile = open(r'/home/sarasl/git/GenomeAnalysis/5_differential_expression/slurm-14360869.out','r')
matches = []
count = 0
reg = re.compile("^id[0-9]*\s[0-9]*")
for line in textfile:
    matches += reg.findall(line)
for i in matches:
    line = i.split('\t')
    count += int(line[1])
print(count)
