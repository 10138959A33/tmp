largeFiles=$(find . -type f -size +99M)
if [[ $largeFiles ]]; then
    echo "=> There Are Files Larger Than 100MB" &&
	echo "$largeFiles" &&
	echo "=> Please Now Do It Yourself !"
else
    bash registerCredential.sh &&
	bash clearCredential.sh &&
	git add . &&
	git commit -am "get proj" &&
	git push &&
	bash clearCredential.sh &&
	echo "=> DONE !!!"
fi