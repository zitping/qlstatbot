# qlstatbot
A Discord.js bot for querying Quake Live server details


started with https://github.com/discordjs/discord.js/

discord api token will go in a config.js file as shown here:
https://discordjs.guide/creating-your-bot/#using-dotenv


index.js includes command definitions, here !players calls players.sh which is to interact with a Quake Live server hosted using LinuxGSM and MinQLX:
https://github.com/MinoMino/minqlx

https://linuxgsm.com/servers/qlserver/
