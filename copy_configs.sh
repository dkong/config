filenames=".bash_profile .bashrc .inputrc .vimperatorrc .vimrc"

for filename in $filenames 
do
	cp ~/$filename $filename
done

git commit -a 
git push

