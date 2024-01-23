_check_python(){
    (command -v python$1 2> /dev/null > /dev/null && return 0 || return 1 )
}

_check_ipython_install(){
    args_except_first="${@:2}"
    if python$1 -m IPython $args_except_first
    then
        return 0
    else
        return 1
    fi
}

_check(){
    args_except_first="${@:2}"
    if (! _check_ipython_install $1 $args_except_first)
    then
        echo "IPython is not installed for Python$1."
        return 1
    fi
    return 0
}

ipython3.7(){
    _check 3.7 $@
}
ipython3.8(){
    _check 3.8 $@
}
ipython3.9(){
    _check 3.9 $@
}
ipython3.10(){
    _check 3.10 $@
}
ipython3.11(){
    _check 3.11 $@
}

ipython(){
    python -m IPython $@
}
