cat ./log.33.2.t3/qqit.log  | grep commit | awk -F":" '$6 > 00 {print $0}'
