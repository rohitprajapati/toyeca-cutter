# toyeca-cutter
Small awk utility to cut specific headers(columns) from a csv file

Usage - 

awk -f toyeca-cutter.awk -v c="col1, col2, col3, col4" my_file.csv

Arguments:
	c - Space seperated list of column names (headers)
