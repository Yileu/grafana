ipadd=`echo $(hostname -I) | awk '{print $1}'`
echo $ipadd
sed -i "s|localhost|$ipadd|g" /prometheus/prometheus.yml

