{
	A[$1]+=$3
}
END {
	for( i in A ){
		print i,A[i]}
	
}

