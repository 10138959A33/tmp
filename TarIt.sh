# TarIt ~/work 100MB ~/workspaces.tar
tar -cvf - $1 | split --bytes=$2 - $3
