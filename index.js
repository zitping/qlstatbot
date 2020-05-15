const Discord = require('discord.js');
const { prefix, token } = require('./config.json');
const { exec } = require("child_process");
const client = new Discord.Client();

client.once('ready', () => {
	console.log('Ready!');
});

client.on('message', message => {
	if (message.content === '!ping') {
		message.channel.send('Pong.');
	}
});

client.on('message', message => {
    if (message.content === '!players') {
        exec("./players.sh", (error, stdout, stderr) => {
            if (error) {
                message.channel.send(`error: ${error.message}`);
                return;
            }
            if (stderr) {
                messsage.channel.send(`stderr: ${stderr}`);
                return;
            }
            message.channel.send(`${stdout}`);
        });
    }
});

client.login(token)

