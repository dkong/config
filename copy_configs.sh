filenames=".bash_profile .bashrc .inputrc .vimperatorrc .vimrc .gitconfig"

for filename in $filenames 
do
	cp ~/$filename $filename
done

cp ~/.subversion/config .subversion_config

if [ "$1" = "-c" ]
then
	git commit -a -m "Latest configs"
	git push
fi

