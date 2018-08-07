BEGIN {
	FS = ","
}

NR==1 {
	split(c, ca, ",")
	for (i = 1 ; i <= length(ca) ; i++) {
		gsub(/ /, "", ca[i])
		cm[ca[i]] = 1
	}
	for (i = 1 ; i <= NF ; i++) {
		if (cm[$i] == 1) {
			cc[i] = 1
		}
	}
	if (length(cc) == 0) {
		exit 1
	}
}

{
	ci = ""
	for (i = 1 ; i <= NF ; i++) {
		if (cc[i] == 1) {
			if (ci == "") {
				ci = $i
			} else {
				ci = ci "," $i
			}
		}
	}
	print ci
}
