cours ()
{
    if [ -z ${1+x} ]; then
        cd $HOME/Documents/COURS/2A/COURS;
    else
        cd $HOME/Documents/COURS/2A/COURS/4MM$1:u;
    fi
}

cours_edit ()
{
    if [ -z ${1+x} ]; then
        echo "Il faut spécifier le cours à éditer !";
        return -1;
    else
        cours $1 ; vim +195 $HOME/Documents/COURS/2A/COURS/4MM$1:u/4MM$1:u.tex -c 'normal zt';
    fi
}

cours_see ()
{
    if [ -z ${1+x} ]; then
        echo "Il faut spécifier le cours à ouvrir !";
        return -1;
    else
        evince $HOME/Documents/COURS/2A/COURS/4MM$1:u/4MM$1:u.pdf ;
    fi
}

mk ()
{
    if [ -z ${1+x} ]; then
        cd $HOME/Documents/COURS/2A/COURS/ ; make -s;
    else
        cd $HOME/Documents/COURS/2A/COURS/ ; make -s build NOM=4MM$1:u;
    fi
    cd $OLDPWD ;
}

alias c="cours"
alias ce="cours_edit"
alias cs="cours_see"

panick ()
{
    git add *
    git commit -a -m "panick commit"
    git push
}

torbrowser ()
{
    cd "$HOME/Logiciels/torbrowser/tor-browser_en-US"; ./torbrowser; cd -
}

pi ()
{
    ssh -i "$HOME/.ssh/pi/pi_rsa" pi@pi.home
}

alias xcf="sed 's/&/\\&amp;/g' | sed 's/</\\&lt;/g' | sed 's/>/\\&gt;/g' | xclip -selection clipboard"

alias book="python /home/rubytox/Documents/Personal/Wicca/BoS/dist/write_book.byte.py"
