largeFiles=$(find . -type f -size +99M)
if [[ $largeFiles ]]; then
    echo "=> There Are Files Larger Than 100MB" &&
	echo "$largeFiles" &&
	echo "=> Please Now Do It Yourself !"
else
    ./registerCredential.sh &&
	./clearCredential.sh &&
	git add . &&
	git commit -am "get proj" &&
	git push &&
	./clearCredential.sh &&
	echo "=> DONE !!!"
fi