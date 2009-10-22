filenames=".bash_profile .bashrc .inputrc .vimperatorrc .vimrc"

for filename in $filenames 
do
	cp ~/$filename $filename
done

if [ "$1" = "-c" ]
then
	git commit -a -m "Latest configs"
	git push
fi

