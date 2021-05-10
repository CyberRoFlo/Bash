#This bash script was obtained from RangeForce SOC 1 Analyst Battle Path
#This script will allow a user to run multiple YARA rules in a directory against a file

for file in $(find PATH-TO-DIRECTORY-CONTAINING-RULES -name '*.yar');
do test $(yara -c ${file} PATH-TO-FILE) -gt 0 && echo $file;
done 2>/dev/null