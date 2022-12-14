# user, host, full path, and time/date
# on two lines for easier vgrepping
# entry in a nice long thread on the Arch Linux forums: https://bbs.archlinux.org/viewtopic.php?pid=521888#p521888

function retcode() {}

#uncomment the next two lines if you want to display ip address of eth0 
PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"$(ifconfig | grep -A 1 eth0 | grep inet | tr -s ' ' | cut -d ' ' -f 3 )"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
%{\e[0;34m%}%B└─%B[%{\e[1;35m%}%?$(retcode)%{\e[0;34m%}%B]%{\e[0m%}%b '

#uncomment the next lines if you want to display ip address of eth0 and not wlp6s0
#PROMPT=$'%{\e[0;34m%}%B┌─[%b%{\e[0m%}%{\e[1;32m%}%n%{\e[1;30m%}@%{\e[0m%}%{\e[0;36m%}%m%{\e[0;34m%}%B]%b%{\e[0m%} - %b%{\e[0;34m%}%B[%b%{\e[1;37m%}%~%{\e[0;34m%}%B]%b%{\e[0m%} - %{\e[0;34m%}%B[%b%{\e[0;33m%}'%D{"$(ifconfig | grep -A 1 wlp6s0 | grep inet | tr -s ' ' | cut -d ' ' -f 3 )"}%b$'%{\e[0;34m%}%B]%b%{\e[0m%}
#%{\e[0;34m%}%B└─%B[%{\e[1;35m%}%?$(retcode)%{\e[0;34m%}%B]%{\e[0m%}%b '

#note: use only 1 prompt.
