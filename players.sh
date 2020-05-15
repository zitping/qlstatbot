#!/bin/bash

## original
# curl -s http://quake.zitping.com:40080/servers?serverNames=zitping | jq '.retrievalDate, .servers[0].game, .servers[0].info.serverName, .servers[0].address, .servers[0].location.countryName, .servers[0].location.state, .servers[0].players[].name'

## anarki replacement example + dropping the color code carrot
#curl -s http://quake.zitping.com:40080/servers?serverNames=zitping | jq '.retrievalDate, .servers[0].game, .servers[0].info.serverName, .servers[0].address, .servers[0].location.countryName, .servers[0].location.state, .servers[0].players[].name' | sed 's/^"//g' | sed 's/"$//g' | sed 's/\^//g' | sed 's/1A2n3a4r5k6i/Anarki/g'

curl -s http://quake.zitping.com:40080/servers?serverNames=zitping | jq '.retrievalDate, .servers[0].game, .servers[0].info.serverName, .servers[0].address, .servers[0].players[].name' | sed 's/^"//g' | sed 's/"$//g' | sed 's/\^[1-9]//g' | sed '0,/^/s//**Request Time:** /' | sed 's/QuakeLive/**Game Type:** Quake Live/' |sed 's/^Instagib/**Server Name:** Instagib/' | sed 's/64.227.4.144/**Server IP:** 64.227.4.144/' | sed 's/27960/27960\n\n**Players:**\n```/' | sed -e "\$a\`\`\`" 
