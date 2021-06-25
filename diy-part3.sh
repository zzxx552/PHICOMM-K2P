lan_ip='192.168.3.1'                                                        # Lan Ip地址
utc_name='Asia\/Shanghai'                                                   # 时区



echo "lan ip"
sed -i "s/192.168.1.1/$lan_ip/g" package/base-files/files/bin/config_generate

echo "时区"
sed -i "s/'UTC'/'CST-8'\n   set system.@system[-1].zonename='$utc_name'/g" package/base-files/files/bin/config_generate
