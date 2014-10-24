#!/bin/sh
#
### LICENSE // ###
#
# Copyright (c) 2014, Daniel Plominski (Plominski IT Consulting)
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
# list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice, this
# list of conditions and the following disclaimer in the documentation and/or
# other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
# ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
### // LICENSE ###
#
### ### ### PLITC // ### ### ###

### stage0 // ###
rm -rf /tmp/get_ipv4*
#
UNAME=$(uname)
MYNAME=$(whoami)
#
GETIPV4="/tmp/get_ipv4_address.log"
touch $GETIPV4
GETIPV4ROUTER="/tmp/get_ipv4_router.log"
touch $GETIPV4ROUTER
GETIPV4ROUTERLIST="/tmp/get_ipv4_router_list.log"
touch $GETIPV4ROUTERLIST
GETIPV4ROUTERLISTMENU="/tmp/get_ipv4_router_list_menu.log"
touch $GETIPV4ROUTERLISTMENU
GETIPV4DNSLIST="/tmp/get_ipv4_dnslist.log"
touch $GETIPV4DNSLIST
GETIPV4ARPDIG="/tmp/get_ipv4_address_arpdig.log"
touch $GETIPV4ARPDIG
#
ARPING=$(/usr/bin/which arping)
ARPDIG=$(/usr/bin/which arpdig)
ZSH=$(/usr/bin/which zsh)
#
## DN42a // ##
GETIPV4CURRDN42ALIST="/tmp/get_ipv4_address_currdn42a.log"
touch $GETIPV4CURRDN42ALIST
GETIPV4FULLDN42ALIST="/tmp/get_ipv4_address_fulldn42a.log"
touch $GETIPV4FULLDN42ALIST
GETIPV4CURRDN42ALISTL="/tmp/get_ipv4_address_currdn42a_l.log"
touch $GETIPV4CURRDN42ALISTL
GETIPV4FULLDN42ALISTL="/tmp/get_ipv4_address_fulldn42a_l.log"
touch $GETIPV4FULLDN42ALISTL
GETIPV4SORTDN42ALISTL="/tmp/get_ipv4_address_sortdn42a.log"
touch $GETIPV4SORTDN42ALISTL
GETIPV4MENUDN42A="/tmp/get_ipv4_address_menudn42a.log"
touch $GETIPV4MENUDN42A
GETIPV4MENUDN42ALIST="/tmp/get_ipv4_address_menudn42alist.log"
touch $GETIPV4MENUDN42ALIST
GETIPV4MENUDN42ALISTIP="/tmp/get_ipv4_address_menudn42a_ip.log"
touch $GETIPV4MENUDN42ALISTIP
GETIPV4MENUDN42AIPFUNC="/tmp/get_ipv4_address_menudn42a_ipfunc.log"
touch $GETIPV4MENUDN42AIPFUNC
## // DN42a ##
#
## Class A // ##
GETIPV4CURRALIST="/tmp/get_ipv4_address_curra.log"
touch $GETIPV4CURRALIST
GETIPV4FULLALIST="/tmp/get_ipv4_address_fulla.log"
touch $GETIPV4FULLALIST
GETIPV4CURRALISTL="/tmp/get_ipv4_address_curra_l.log"
touch $GETIPV4CURRALISTL
GETIPV4FULLALISTL="/tmp/get_ipv4_address_fulla_l.log"
touch $GETIPV4FULLALISTL
GETIPV4SORTALISTL="/tmp/get_ipv4_address_sorta.log"
touch $GETIPV4SORTALISTL
GETIPV4MENUA="/tmp/get_ipv4_address_menua.log"
touch $GETIPV4MENUA
GETIPV4MENUALIST="/tmp/get_ipv4_address_menualist.log"
touch $GETIPV4MENUALIST
GETIPV4MENUALISTIP="/tmp/get_ipv4_address_menua_ip.log"
touch $GETIPV4MENUALISTIP
GETIPV4MENUAIPFUNC="/tmp/get_ipv4_address_menua_ipfunc.log"
touch $GETIPV4MENUAIPFUNC
## // Class A ##
#
## Class B // ##
GETIPV4CURRBLIST="/tmp/get_ipv4_address_currb.log"
touch $GETIPV4CURRBLIST
GETIPV4FULLBLIST="/tmp/get_ipv4_address_fullb.log"
touch $GETIPV4FULLBLIST
GETIPV4CURRBLISTL="/tmp/get_ipv4_address_currb_l.log"
touch $GETIPV4CURRBLISTL
GETIPV4FULLBLISTL="/tmp/get_ipv4_address_fullb_l.log"
touch $GETIPV4FULLBLISTL
GETIPV4SORTBLISTL="/tmp/get_ipv4_address_sortb.log"
touch $GETIPV4SORTBLISTL
GETIPV4MENUB="/tmp/get_ipv4_address_menub.log"
touch $GETIPV4MENUB
GETIPV4MENUBLIST="/tmp/get_ipv4_address_menublist.log"
touch $GETIPV4MENUBLIST
GETIPV4MENUBLISTIP="/tmp/get_ipv4_address_menub_ip.log"
touch $GETIPV4MENUBLISTIP
GETIPV4MENUBIPFUNC="/tmp/get_ipv4_address_menub_ipfunc.log"
touch $GETIPV4MENUBIPFUNC
## // Class B ##
#
## Class C // ##
GETIPV4CURRCLIST="/tmp/get_ipv4_address_currc.log"
touch $GETIPV4CURRCLIST
GETIPV4FULLCLIST="/tmp/get_ipv4_address_fullc.log"
touch $GETIPV4FULLCLIST
GETIPV4CURRCLISTL="/tmp/get_ipv4_address_currc_l.log"
touch $GETIPV4CURRCLISTL
GETIPV4FULLCLISTL="/tmp/get_ipv4_address_fullc_l.log"
touch $GETIPV4FULLCLISTL
GETIPV4SORTCLISTL="/tmp/get_ipv4_address_sortc.log"
touch $GETIPV4SORTCLISTL
GETIPV4MENUC="/tmp/get_ipv4_address_menuc.log"
touch $GETIPV4MENUC
GETIPV4MENUCLIST="/tmp/get_ipv4_address_menuclist.log"
touch $GETIPV4MENUCLIST
GETIPV4MENUCLISTIP="/tmp/get_ipv4_address_menuc_ip.log"
touch $GETIPV4MENUCLISTIP
GETIPV4MENUCIPFUNC="/tmp/get_ipv4_address_menuc_ipfunc.log"
touch $GETIPV4MENUCIPFUNC
## // Class C ##
#
### // stage0 ###


### stage1 // ###
case $UNAME in
FreeBSD)
   ### FreeBSD ###
### ### ### ### ### ### ### ### ###


### stage2 // ###
if [ $MYNAME = root ]; then
   # ipv6gw
else
   echo "<--- --- --->"
   echo ""
   echo "ERROR: You must be root to run this script"
   exit 1
fi

if [ -z $ARPING ]; then
   echo "<--- --- --->"
   echo "need arping"
   echo "<--- --- --->"
   cd /usr/ports/net/arping/ && make install clean
   cd -
   echo "<--- --- --->"
else
   #
fi

if [ -z $ARPDIG ]; then
   echo "<--- --- --->"
   echo "need arpdig"
   echo "<--- --- --->"
   cd /usr/ports/net/arpdig/ && make install clean
   cd -
   echo "<--- --- --->"
else
   #
fi

if [ -z $ZSH ]; then
   echo "<--- --- --->"
   echo "need zsh shell"
   echo "<--- --- --->"
   cd /usr/ports/shells/zsh/ && make install clean
   cd -
   echo "<--- --- --->"
else
   #
fi
### // stage2 ###


### stage3 // ###
#
GETIPV4IF="/tmp/get_ipv4_address_if.log"
touch $GETIPV4IF
#
dialog --inputbox "Enter the interface name:" 8 40 2>$GETIPV4IF
#
GETIPV4IFVALUE=$(cat $GETIPV4IF | sed 's/#//g' | sed 's/%//g')
#
GETIPV4IFCHECK=$(ifconfig | grep UP | awk '{print $1}' | sed 's/://g' | grep $GETIPV4IFVALUE)
#
if [ -z $GETIPV4IFCHECK ]; then
   echo "ERROR: interface doesn't exist or isn't showing up"
   exit 1
else
   #
fi
### // stage3 ###


### stage4 // ###

   #echo "<--- tcpdump preview // --->"
   #echo ""
   #/usr/sbin/tcpdump -e -n -i $GETIPV4IFVALUE -c 25 | grep --color 0x0800
   #echo ""
   #echo "<--- // tcpdump preview --->"
   echo ""
   (/usr/sbin/tcpdump -e -n -i $GETIPV4IFVALUE -c 25 | grep --color 0x0800 | awk '{print $10}' 2>&1 > $GETIPV4) &&
   #echo ""

TCPDUMP1=10
(
while test $TCPDUMP1 != 110
do
echo $TCPDUMP1
echo "XXX"
echo "discovering the local network: ($TCPDUMP1 percent)"
echo "XXX"
#
TCPDUMP1=`expr $TCPDUMP1 + 10`
sleep 1
done
) | dialog --title "tcpdump - network discovery" --gauge "discover the local network" 20 70 0

#
echo "<--- --- --- --- --- --- --- --- --->"

CLASSCTEST=$(grep "192.168" $GETIPV4 | wc -l | sed 's/ //g')
CLASSBTEST=$(grep "172.16" $GETIPV4 | wc -l | sed 's/ //g')
CLASSATEST=$(grep "10." $GETIPV4 | wc -l | sed 's/ //g')
#
CLASSDN42ATEST=$(grep "172.22" $GETIPV4 | wc -l | sed 's/ //g')

if [ $CLASSCTEST = 0 ]; then
   echo "ERROR: can't find class C network, try again ..."
   echo "<--- --- --->"
###
   if [ $CLASSBTEST = 0 ]; then
      echo "ERROR: can't find class B network, try again ..."
      echo "<--- --- --->"
### ###
      if [ $CLASSATEST = 0 ]; then
         echo "ERROR: can't find class A network, try again ..."
         echo "<--- --- --->"
### ### ###
            echo 'ERROR: no RFC1918 networks found, try dn42 ...'
            # exit 1
            echo "<--- --- --->"
### ### ### DN42a // ### ### ###
               if [ $CLASSDN42ATEST = 0 ]; then
                  echo "ERROR: ... doesn't work ..."
                  echo "<--- --- --->"
### ### ### ### ### ###
               else
                  echo 'looks like ... DN42 A network'
# <--- --- --- --- --- --- --- --- ---//
   CLASSDN42ANET=$(cat $GETIPV4 | grep "172.22" | sort | uniq | head -n 1 | cut -c 1-9 | xargs -L1 -I {} echo {}.0/24)
   # /usr/local/bin/arpdig -i $GETIPV4IFVALUE $CLASSDN42ANET
   /usr/local/bin/arpdig -i $GETIPV4IFVALUE $CLASSDN42ANET > $GETIPV4ARPDIG
   CLASSDN42APRE=$(cat $GETIPV4 | grep "172.22" | sort | uniq | head -n 1 | cut -c 1-9)
   GETIPV4CURRDN42A=$(cat $GETIPV4ARPDIG | sed '/Digging/d' | awk '{print $1}')
   netdn42a=$CLASSDN42APRE; idn42a=1; GETIPV4FULLDN42A=`while [ $idn42a -lt 255 ]; do echo $netdn42a.$idn42a; idn42a=$(($idn42a+1)); done`
   echo $GETIPV4CURRDN42A > $GETIPV4CURRDN42ALIST
   echo $GETIPV4FULLDN42A > $GETIPV4FULLDN42ALIST
   tr ' ' '\n' < $GETIPV4CURRDN42ALIST > $GETIPV4CURRDN42ALISTL
   tr ' ' '\n' < $GETIPV4FULLDN42ALIST > $GETIPV4FULLDN42ALISTL
   sort -n $GETIPV4CURRDN42ALISTL $GETIPV4FULLDN42ALISTL | uniq -u > $GETIPV4SORTDN42ALISTL
   nl $GETIPV4SORTDN42ALISTL | sed 's/ //g' > $GETIPV4MENUDN42A
   dialog --menu "Choose one IP:" 45 45 40 `cat $GETIPV4MENUDN42A` 2>$GETIPV4MENUDN42ALIST
   /usr/local/bin/zsh -c "join <(sort /tmp/get_ipv4_address_menudn42a.log) <(sort /tmp/get_ipv4_address_menudn42alist.log) > /tmp/get_ipv4_address_menudn42a_ip.log"
   SETDN42AIP=$(cat /tmp/get_ipv4_address_menudn42a_ip.log | awk '{print $2}')
   dialog --menu "IP function:" 10 10 10 1 new 2 alias 2>$GETIPV4MENUDN42AIPFUNC
   GETIPV4MENUDN42AIPFUNCN=$(cat $GETIPV4MENUDN42AIPFUNC | sed 's/#//g' | sed 's/%//g')
   if [ $GETIPV4MENUDN42AIPFUNCN = 1 ]; then
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
      ifconfig $GETIPV4IFVALUE inet $SETDN42AIP/24
   else
      ifconfig $GETIPV4IFVALUE inet $SETDN42AIP/24 alias
   fi
### ### ### ### ### ### ### ### ###
NEWDN42AIP=$(ifconfig $GETIPV4IFVALUE | grep --color $SETDN42AIP)
echo ""
ifconfig $GETIPV4IFVALUE
echo ""
echo "Your new IP: $NEWDN42AIP"
### ### ### ### ### ### ### ### ###
# <// --- --- --- --- --- --- --- --- ---
#
### ### ### // DN42a ### ### ###
               fi
### ### ###
      else
         echo 'looks like ... class A network'
# <--- --- --- --- --- --- --- --- ---//
   CLASSANET=$(cat $GETIPV4 | grep "10." | sort | uniq | head -n 1 | cut -c 1-11 | xargs -L1 -I {} echo {}.0/24)
   # /usr/local/bin/arpdig -i $GETIPV4IFVALUE $CLASSANET  
   /usr/local/bin/arpdig -i $GETIPV4IFVALUE $CLASSANET > $GETIPV4ARPDIG
   CLASSAPRE=$(cat $GETIPV4 | grep "10." | sort | uniq | head -n 1 | cut -c 1-11)
   GETIPV4CURRA=$(cat $GETIPV4ARPDIG | sed '/Digging/d' | awk '{print $1}')
   neta1=$CLASSAPRE; ia1=1; GETIPV4FULLA=`while [ $ia1 -lt 255 ]; do echo $neta1.$ia1; ia1=$(($ia1+1)); done`
   echo $GETIPV4CURRA > $GETIPV4CURRALIST
   echo $GETIPV4FULLA > $GETIPV4FULLALIST
   tr ' ' '\n' < $GETIPV4CURRALIST > $GETIPV4CURRALISTL
   tr ' ' '\n' < $GETIPV4FULLALIST > $GETIPV4FULLALISTL
   sort -n $GETIPV4CURRALISTL $GETIPV4FULLALISTL | uniq -u > $GETIPV4SORTALISTL
   nl $GETIPV4SORTALISTL | sed 's/ //g' > $GETIPV4MENUA
   dialog --menu "Choose one IP:" 45 45 40 `cat $GETIPV4MENUA` 2>$GETIPV4MENUALIST
   /usr/local/bin/zsh -c "join <(sort /tmp/get_ipv4_address_menua.log) <(sort /tmp/get_ipv4_address_menualist.log) > /tmp/get_ipv4_address_menua_ip.log"
   SETAIP=$(cat /tmp/get_ipv4_address_menua_ip.log | awk '{print $2}')
   dialog --menu "IP function:" 10 10 10 1 new 2 alias 2>$GETIPV4MENUAIPFUNC
   GETIPV4MENUAIPFUNCN=$(cat $GETIPV4MENUAIPFUNC | sed 's/#//g' | sed 's/%//g')
   if [ $GETIPV4MENUCIPFUNCN = 1 ]; then
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
      ifconfig $GETIPV4IFVALUE inet $SETCIP/24
   else
      ifconfig $GETIPV4IFVALUE inet $SETCIP/24 alias  
   fi
### ### ### ### ### ### ### ### ###
NEWAIP=$(ifconfig $GETIPV4IFVALUE | grep --color $SETAIP)
echo ""
ifconfig $GETIPV4IFVALUE
echo ""
echo "Your new IP: $NEWAIP"
### ### ### ### ### ### ### ### ###
# <// --- --- --- --- --- --- --- --- ---
      fi
### ###
   else
      echo 'looks like ... class B network'
# <--- --- --- --- --- --- --- --- ---//
   CLASSBNET=$(cat $GETIPV4 | grep "172.16" | sort | uniq | head -n 1 | cut -c 1-11 | xargs -L1 -I {} echo {}.0/24)
   # /usr/local/bin/arpdig -i $GETIPV4IFVALUE $CLASSBNET
   /usr/local/bin/arpdig -i $GETIPV4IFVALUE $CLASSBNET > $GETIPV4ARPDIG
   CLASSBPRE=$(cat $GETIPV4 | grep "172.16" | sort | uniq | head -n 1 | cut -c 1-11)
   GETIPV4CURRB=$(cat $GETIPV4ARPDIG | sed '/Digging/d' | awk '{print $1}')
   netb1=$CLASSBPRE; ib1=1; GETIPV4FULLB=`while [ $ib1 -lt 255 ]; do echo $netb1.$ib1; ib1=$(($ib1+1)); done`
   echo $GETIPV4CURRB > $GETIPV4CURRBLIST
   echo $GETIPV4FULLB > $GETIPV4FULLBLIST
   tr ' ' '\n' < $GETIPV4CURRBLIST > $GETIPV4CURRBLISTL
   tr ' ' '\n' < $GETIPV4FULLBLIST > $GETIPV4FULLBLISTL
   sort -n $GETIPV4CURRBLISTL $GETIPV4FULLBLISTL | uniq -u > $GETIPV4SORTCLISTL
   nl $GETIPV4SORTBLISTL | sed 's/ //g' > $GETIPV4MENUB
   dialog --menu "Choose one IP:" 45 45 40 `cat $GETIPV4MENUB` 2>$GETIPV4MENUBLIST
   /usr/local/bin/zsh -c "join <(sort /tmp/get_ipv4_address_menub.log) <(sort /tmp/get_ipv4_address_menublist.log) > /tmp/get_ipv4_address_menub_ip.log"
   SETBIP=$(cat /tmp/get_ipv4_address_menub_ip.log | awk '{print $2}')
   dialog --menu "IP function:" 10 10 10 1 new 2 alias 2>$GETIPV4MENUBIPFUNC
   GETIPV4MENUBIPFUNCN=$(cat $GETIPV4MENUBIPFUNC | sed 's/#//g' | sed 's/%//g')
   if [ $GETIPV4MENUBIPFUNCN = 1 ]; then
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
      ifconfig $GETIPV4IFVALUE inet $SETCIP/24
   else   
      ifconfig $GETIPV4IFVALUE inet $SETCIP/24 alias
   fi
### ### ### ### ### ### ### ### ###
NEWBIP=$(ifconfig $GETIPV4IFVALUE | grep --color $SETBIP)
echo ""
ifconfig $GETIPV4IFVALUE
echo ""
echo "Your new IP: $NEWBIP"
### ### ### ### ### ### ### ### ###
# <// --- --- --- --- --- --- --- --- ---
   fi
###
else
   echo 'looks like ... class C network'
# <--- --- --- --- --- --- --- --- ---//
   CLASSCNET=$(cat $GETIPV4 | grep "192.168" | sort | uniq | head -n 1 | cut -c 1-11 | xargs -L1 -I {} echo {}.0/24)
   # /usr/local/bin/arpdig -i $GETIPV4IFVALUE $CLASSCNET
   /usr/local/bin/arpdig -i $GETIPV4IFVALUE $CLASSCNET > $GETIPV4ARPDIG
   CLASSCPRE=$(cat $GETIPV4 | grep "192.168" | sort | uniq | head -n 1 | cut -c 1-11)
   GETIPV4CURRC=$(cat $GETIPV4ARPDIG | sed '/Digging/d' | awk '{print $1}')
   netc1=$CLASSCPRE; ic1=1; GETIPV4FULLC=`while [ $ic1 -lt 255 ]; do echo $netc1.$ic1; ic1=$(($ic1+1)); done`
   echo $GETIPV4CURRC > $GETIPV4CURRCLIST
   echo $GETIPV4FULLC > $GETIPV4FULLCLIST
   tr ' ' '\n' < $GETIPV4CURRCLIST > $GETIPV4CURRCLISTL
   tr ' ' '\n' < $GETIPV4FULLCLIST > $GETIPV4FULLCLISTL
   sort -n $GETIPV4CURRCLISTL $GETIPV4FULLCLISTL | uniq -u > $GETIPV4SORTCLISTL
   nl $GETIPV4SORTCLISTL | sed 's/ //g' > $GETIPV4MENUC
   dialog --menu "Choose one IP:" 45 45 40 `cat $GETIPV4MENUC` 2>$GETIPV4MENUCLIST
   /usr/local/bin/zsh -c "join <(sort /tmp/get_ipv4_address_menuc.log) <(sort /tmp/get_ipv4_address_menuclist.log) > /tmp/get_ipv4_address_menuc_ip.log"
   SETCIP=$(cat /tmp/get_ipv4_address_menuc_ip.log | awk '{print $2}')
   dialog --menu "IP function:" 10 10 10 1 new 2 alias 2>$GETIPV4MENUCIPFUNC
   GETIPV4MENUCIPFUNCN=$(cat $GETIPV4MENUCIPFUNC | sed 's/#//g' | sed 's/%//g')
   if [ $GETIPV4MENUCIPFUNCN = 1 ]; then
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
#      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
      ifconfig $GETIPV4IFVALUE inet -alias 2>&1 > /dev/null
      ifconfig $GETIPV4IFVALUE inet $SETCIP/24
   else
      ifconfig $GETIPV4IFVALUE inet $SETCIP/24 alias
   fi
### ### ### ### ### ### ### ### ###
NEWCIP=$(ifconfig $GETIPV4IFVALUE | grep --color $SETCIP)
echo ""
ifconfig $GETIPV4IFVALUE
echo ""
echo "Your new IP: $NEWCIP"
### ### ### ### ### ### ### ### ###
# <// --- --- --- --- --- --- --- --- ---
fi

### stage5 // ###

# <--- --- --- --- ROUTER // --- --- --- ---//

   #echo ""
   #echo "<--- ROUTER tcpdump preview // --->"
   #echo ""
   #/usr/sbin/tcpdump -e -n -i $GETIPV4IFVALUE -c 55 | grep --color "OSPFv2"
   #echo ""
   #echo "<--- // ROUTER tcpdump preview --->"
   echo ""
   (/usr/sbin/tcpdump -e -n -i $GETIPV4IFVALUE -c 55 | grep --color "OSPFv2" | awk '{print $10}' | sort | uniq 2>&1 > $GETIPV4ROUTER) &&
   #echo ""

TCPDUMP2=10
(
while test $TCPDUMP2 != 110
do
echo $TCPDUMP2
echo "XXX"
echo "discovering local router: ($TCPDUMP2 percent)"   
echo "XXX"
#
TCPDUMP2=`expr $TCPDUMP2 + 10`
sleep 1
done
) | dialog --title "tcpdump - router discovery" --gauge "discover local router" 20 70 0

   nl $GETIPV4ROUTER | sed 's/ //g' > $GETIPV4ROUTERLIST
   dialog --menu "Choose one default Router:" 10 30 40 `cat $GETIPV4ROUTERLIST` 2>$GETIPV4ROUTERLISTMENU
   /usr/local/bin/zsh -c "join <(sort /tmp/get_ipv4_router_list.log) <(sort /tmp/get_ipv4_router_list_menu.log) > /tmp/get_ipv4_router_list_menu_choosed.log"
   SETROUTERIP=$(cat /tmp/get_ipv4_router_list_menu_choosed.log | awk '{print $2}')

   echo "<--- set default router // --->"
   route del -inet default
   route add -inet default $SETROUTERIP -ifp $GETIPV4IFVALUE
   echo "<--- // set default router --->"

# <--- --- --- --- // ROUTER --- --- --- ---//

### // stage5 ###

### stage6 // ###

# <--- --- --- --- DNS Resolver // --- --- --- ---//

   dialog --checklist "Select fancy Public DNS Resolver:" 30 75 12 \
      1 "46.4.163.36    (plitc-public-dns-a.de.plitc.eu / germany only)" off\
      2 "46.4.163.37    (plitc-public-dns-b.de.plitc.eu / germany only)" off\
      3 "46.4.163.38    (plitc-public-dns-c.de.plitc.eu / germany only)" off\
      4 "213.73.19.35   (dnscache.berlin.ccc.de)" on\
      5 "74.82.42.42    (ordns.he.net)" on\
      6 "208.67.222.222 (resolver1.opendns.com)" off\
      7 "208.67.220.220 (resolver2.opendns.com)" off\
      8 "8.8.8.8        (google-public-dns-a.google.com)" off\
      9 "8.8.4.4        (google-public-dns-b.google.com)" off\
       2>$GETIPV4DNSLIST

   echo "<--- prepare /etc/resolv.conf // --->"

cat << DNSEOF > /tmp/get_ipv4_resolv.conf
### ### ### GET_IPv4 // ### ### ###
#
DNSEOF

GETIPV4DNSLISTCHECK1=$(grep "1" $GETIPV4DNSLIST | sed 's/#//g' | sed 's/%//g')
if [ -z $GETIPV4DNSLISTCHECK1 ]; then
   #
   else
   echo "nameserver 46.4.163.36     # (plitc-public-dns-a.de.plitc.eu / germany only)" >> /tmp/get_ipv4_resolv.conf
fi

GETIPV4DNSLISTCHECK2=$(grep "2" $GETIPV4DNSLIST | sed 's/#//g' | sed 's/%//g')
if [ -z $GETIPV4DNSLISTCHECK2 ]; then
   #
   else
   echo "nameserver 46.4.163.37     # (plitc-public-dns-b.de.plitc.eu / germany only)" >> /tmp/get_ipv4_resolv.conf
fi

GETIPV4DNSLISTCHECK3=$(grep "3" $GETIPV4DNSLIST | sed 's/#//g' | sed 's/%//g')
if [ -z $GETIPV4DNSLISTCHECK3 ]; then
   #
   else
   echo "nameserver 46.4.163.38     # (plitc-public-dns-c.de.plitc.eu / germany only)" >> /tmp/get_ipv4_resolv.conf
fi

GETIPV4DNSLISTCHECK4=$(grep "4" $GETIPV4DNSLIST | sed 's/#//g' | sed 's/%//g')
if [ -z $GETIPV4DNSLISTCHECK4 ]; then
   #
   else
   echo "nameserver 213.73.91.35    # (dnscache.berlin.ccc.de)" >> /tmp/get_ipv4_resolv.conf
fi

GETIPV4DNSLISTCHECK5=$(grep "5" $GETIPV4DNSLIST | sed 's/#//g' | sed 's/%//g')
if [ -z $GETIPV4DNSLISTCHECK5 ]; then
   #
   else
   echo "nameserver 74.82.42.42     # (ordns.he.net)" >> /tmp/get_ipv4_resolv.conf
fi

GETIPV4DNSLISTCHECK6=$(grep "6" $GETIPV4DNSLIST | sed 's/#//g' | sed 's/%//g')
if [ -z $GETIPV4DNSLISTCHECK6 ]; then
   #
   else
   echo "nameserver 208.67.222.222  # (resolver1.opendns.com)" >> /tmp/get_ipv4_resolv.conf
fi

GETIPV4DNSLISTCHECK7=$(grep "7" $GETIPV4DNSLIST | sed 's/#//g' | sed 's/%//g')
if [ -z $GETIPV4DNSLISTCHECK7 ]; then
   #
   else
   echo "nameserver 208.67.220.220  # (resolver2.opendns.com)" >> /tmp/get_ipv4_resolv.conf
fi

GETIPV4DNSLISTCHECK8=$(grep "8" $GETIPV4DNSLIST | sed 's/#//g' | sed 's/%//g')
if [ -z $GETIPV4DNSLISTCHECK8 ]; then
   #
   else
   echo "nameserver 8.8.8.8         # (google-public-dns-a.google.com)" >> /tmp/get_ipv4_resolv.conf
fi

GETIPV4DNSLISTCHECK9=$(grep "9" $GETIPV4DNSLIST | sed 's/#//g' | sed 's/%//g')
if [ -z $GETIPV4DNSLISTCHECK9 ]; then
   #
   else
   echo "nameserver 8.8.4.4         # (google-public-dns-b.google.com)" >> /tmp/get_ipv4_resolv.conf
fi

cat << DNSENDEOF >> /tmp/get_ipv4_resolv.conf
#
### ### ### // GET_IPv4 ### ### ###
# EOF
DNSENDEOF

chflags noschg /etc/resolv.conf
cp -f /tmp/get_ipv4_resolv.conf /etc/resolv.conf

   echo "<--- // prepare /etc/resolv.conf --->"

# <--- --- --- --- // DNS Resolver --- --- --- ---//

### // stage6 ###

### stage7 // ###

# <--- --- --- --- INFO Box // --- --- --- ---//

clear

GETIPV4INFO="/tmp/get_ipv4_info.log"

   echo "" > $GETIPV4INFO
   echo "<--- --- --- INTERFACE --- --- --->" >> $GETIPV4INFO
   echo "" >> $GETIPV4INFO
   ifconfig $GETIPV4IFVALUE >> $GETIPV4INFO
   echo "" >> $GETIPV4INFO
   echo "<--- --- --- Default v4 Gateway --- --- --->" >> $GETIPV4INFO
   echo "" >> $GETIPV4INFO
   route show default >> $GETIPV4INFO
   echo "" >> $GETIPV4INFO
   echo "<--- --- --- /etc/resolv.conf --- --- --->" >> $GETIPV4INFO
   echo "" >> $GETIPV4INFO
   cat /etc/resolv.conf >> $GETIPV4INFO
   echo "" >> $GETIPV4INFO

dialog --textbox "$GETIPV4INFO" 0 0

# <--- --- --- --- // INFO Box --- --- --- ---//

### // stage7 ###

###
rm -rf /tmp/get_ipv4*
### // stage4 ###

### ### ### ### ### ### ### ### ###
   ;;
*)
   # error 1
   echo "<--- --- --->"
   echo ""
   echo "ERROR: Plattform = unknown"
   exit 1
   ;;
esac
### // stage1 ###


### ### ### // PLITC ### ### ###
# EOF
