cd `dirname $0`
if [ ! -e setup.sh ];then
    if [ -e /etc/redhat-release ];then
        cp .centos7.sh.template setup.sh
        echo 'centos7'
    elif [ -e /etc/system-release ];then
        cp .centos7.sh.template setup.sh
        echo 'ec2'
    else
        cp .ubuntu.sh.template setup.sh
        echo 'ubuntu'
    fi
    ln ~/dotfiles/.tmux.conf ~/.tmux.conf
fi
