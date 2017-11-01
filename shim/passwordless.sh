username="ts796565"

# setup a systems array
declare -A SYSTEMS

# sag server
SYSTEMS["sag"]="f796565@sagcfedcwl01.inf.fedex.com"

# SWS SYSTEMS
SYSTEMS["fxfsws 1 1"]="$username@uje31094.freight.fedex.com"
SYSTEMS["fxfsws 2 1"]="$username@ije31103.freight.fedex.com"
SYSTEMS["fxfsws 3 1"]="$username@sje31322.freight.fedex.com"
SYSTEMS["fxfsws 3 2"]="$username@sje31323.freight.fedex.com"
SYSTEMS["fxfsws 4 1"]="$username@vje31328.freight.fedex.com"
SYSTEMS["fxfsws 4 2"]="$username@vje31329.freight.fedex.com"

# WDPA SYSTEMS
SYSTEMS["wdpa 1 1"]="$username@wdpawebbase1.idev.fedex.com"
SYSTEMS["wdpa 1 S1"]="$username@wdpawebsbox1.idev.fedex.com"
SYSTEMS["wdpa 2 1"]="$username@wdpawebdev1.idev.fedex.com"
SYSTEMS["wdpa 2 2"]="$username@wdpawebdev2.idev.fedex.com"
SYSTEMS["wdpa 3 cos1"]="$username@wdpawebdrt-cos1.idev.fedex.com"
SYSTEMS["wdpa 3 cos2"]="$username@wdpawebdrt-cos2.idev.fedex.com"
SYSTEMS["wdpa 3 wtc1"]="$username@wdpawebdrt-wap1.idev.fedex.com"
SYSTEMS["wdpa 3 wtc2"]="$username@wdpawebdrt-wap2.idev.fedex.com"
SYSTEMS["wdpa 4 cos1"]="$username@wdpawebstress-cos1.idev.fedex.com"
SYSTEMS["wdpa 4 cos2"]="$username@wdpawebstress-cos2.idev.fedex.com"
SYSTEMS["wdpa 4 west1"]="$username@wdpawebstress-wap1.zmd.idev.fedex.com"
SYSTEMS["wdpa 4 west2"]="$username@wdpawebstress-wap2.zmd.idev.fedex.com"
SYSTEMS["wdpa 5 1"]="$username@wdpawebbit1.idev.fedex.com"
SYSTEMS["wdpa 5 2"]="$username@wdpawebbit2.idev.fedex.com"

# WGRT SYSTEMS
SYSTEMS["wgrt 1 1"]="$username@wgrtwebbase1.idev.fedex.com"
SYSTEMS["wgrt 1 S1"]="$username@wgrtwebsbox1.idev.fedex.com"
SYSTEMS["wgrt 2 1"]="$username@wgrtwebdev1.idev.fedex.com"
SYSTEMS["wgrt 2 2"]="$username@wgrtwebdev2.idev.fedex.com"
SYSTEMS["wgrt 3 cos1"]="$username@wgrtwebdrt-cos1.idev.fedex.com"
SYSTEMS["wgrt 3 cos2"]="$username@wgrtwebdrt-cos2.idev.fedex.com"
SYSTEMS["wgrt 3 wtc1"]="$username@wgrtwebdrt-wap1.idev.fedex.com"
SYSTEMS["wgrt 3 wtc2"]="$username@wgrtwebdrt-wap2.idev.fedex.com"
SYSTEMS["wgrt 4 cos1"]="$username@wgrtwebstress-cos1.zmd.idev.fedex.com"
SYSTEMS["wgrt 4 cos2"]="$username@wgrtwebstress-cos2.zmd.idev.fedex.com"
SYSTEMS["wgrt 4 cos3"]="$username@wgrtwebstress-cos3.zmd.idev.fedex.com"
SYSTEMS["wgrt 4 cos4"]="$username@wgrtwebstress-cos4.zmd.idev.fedex.com"
SYSTEMS["wgrt 4 cos5"]="$username@wgrtwebstress-cos5.zmd.idev.fedex.com"
SYSTEMS["wgrt 4 west1"]="$username@wgrtwebstress-wap1.zmd.idev.fedex.com"
SYSTEMS["wgrt 4 west2"]="$username@wgrtwebstress-wap2.zmd.idev.fedex.com"
SYSTEMS["wgrt 4 west3"]="$username@wgrtwebstress-wap3.zmd.idev.fedex.com"
SYSTEMS["wgrt 4 west4"]="$username@wgrtwebstress-wap4.zmd.idev.fedex.com"
SYSTEMS["wgrt 4 west5"]="$username@wgrtwebstress-wap5.zmd.idev.fedex.com"
SYSTEMS["wgrt 5 1"]="$username@wgrtwebbit1.idev.fedex.com"
SYSTEMS["wgrt 5 2"]="$username@wgrtwebbit2.idev.fedex.com"

# WRTT SYSTEMS
SYSTEMS["wrtt 1 s1"]="$username@wrttsbox1.idev.fedex.com"
SYSTEMS["wrtt 1 1"]="$username@wrttbase1.idev.fedex.com"
SYSTEMS["wrtt 2 1"]="$username@wrttdev1.idev.fedex.com"
SYSTEMS["wrtt 2 2"]="$username@wrttdev2.idev.fedex.com"
SYSTEMS["wrtt 3 cos1"]="$username@wrttdrt-cos1.idev.fedex.com"
SYSTEMS["wrtt 3 cos2"]="$username@wrttdrt-cos2.idev.fedex.com"
SYSTEMS["wrtt 3 wap1"]="$username@wrttdrt-wap1.idev.fedex.com"
SYSTEMS["wrtt 3 wap2"]="$username@wrttdrt-wap2.idev.fedex.com"
SYSTEMS["wrtt 4 cos1"]="$username@wrttstress-cos1.zmd.idev.fedex.com"
SYSTEMS["wrtt 4 cos2"]="$username@wrttstress-cos2.zmd.idev.fedex.com"
SYSTEMS["wrtt 4 wap1"]="$username@wrttstress-wap1.zmd.idev.fedex.com"
SYSTEMS["wrtt 4 wap2"]="$username@wrttstress-wap2.zmd.idev.fedex.com"
SYSTEMS["wrtt 5 1"]="$username@wrttbit1.idev.fedex.com"
SYSTEMS["wrtt 5 2"]="$username@wrttbit2.idev.fedex.com"
SYSTEMS["wrtt 6 cos1"]="$username@wrtttest-cos1.zmd.fedex.com"
SYSTEMS["wrtt 6 cos2"]="$username@wrtttest-cos2.zmd.fedex.com"
SYSTEMS["wrtt 6 wap1"]="$username@wrtttest-wap1.zmd.fedex.com"
SYSTEMS["wrtt 6 wap2"]="$username@wrtttest-wap2.zmd.fedex.com"
SYSTEMS["wrtt 6 wap2"]="$username@wrtttest-wap2.zmd.fedex.com"

for i in "${!SYSTEMS[@]}"; do
  # copy ~/.ssh/id_rsa.pub to remote system
  ssh-copy-id "${SYSTEMS[$i]}"

  # change permissions because of different versions of ssh
  ssh "$username@${SYSTEMS[$i]} "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"
done

