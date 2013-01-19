# refs. https://github.com/robbyrussell/oh-my-zsh

# via `curl`
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
# via `wget`
# wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# remove unnecessary theme files. use default only.
if [[ -d ~/.oh-my-zsh/themes ]]
then 
	for files in `ls ~/.oh-my-zsh/themes | grep -v robbyrussell.zsh-theme`
	do 
        rm ~/.oh-my-zsh/themes/$files
	done
fi
