filenames=".bash_profile .bashrc .inputrc .vimrc .gitconfig .tmux.conf .tmux_programming.conf"

for filename in $filenames
do
	cp ~/$filename $filename
done

cp ~/.ssh/config .ssh_config

if [ "$1" = "-c" ]
then
	git commit -a -m "Latest configs"
	git push
fi

