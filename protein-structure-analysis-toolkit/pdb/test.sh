awk '/^HEADER/ { for (i = 2; i <= $(awk /^HEADER/ { print NF-2 } "$1" "1fyw.pdb"); ++i) printf $i }' "1fyw.pdb"
#word_count=$(awk '/^HEADER/ { print NF-2 }' "$1")
#echo "Number of words in Type of Protein: $word_count"
#protein_type=$(grep "^HEADER" "$id.pdb" | awk '{print $count}')
#protein_type=$(grep "^HEADER" "$id.pdb" | awk 'BEGIN { for (i = 2; i <= $count; ++i) print $i }')
#grep "^HEADER" "1fyw.pdb" | c=$(awk '/^HEADER/ { print NF-2 }' "$1" "1fyw.pdb") |  awk '/^HEADER/ { for (i = 2; i <= c; ++i) printf $i }' "1fyw.pdb"
