# README for mybot.py

## Introduction

This is a Discord bot created using the Python programming language and the Discord API. The bot uses the OpenAI API to respond to commands in the Discord chat.

## Requirements

- Python 3.x
- discord.py
- openai

## Installation

1. Clone the repository
```
git clone https://https://github.com/mmdmirh/ChatGPT-DiscordBot.git
```


2. Navigate to the repository
```
cd <repository>

```

3. Create a virtual environment (optional)
```
python -m venv venv
```

4. Activate the virtual environment (optional)

On Windows:
```
venv\Scripts\activate
```

On Linux and macOS:
```
source venv/bin/activate
```

5. Install the required packages
```
pip install -r requirements.txt
```

6. Create a `.env` file in the repository root and add the following variables:
```
OPENAI_API_KEY=<your OpenAI API key>
DISCORD_BOT_TOKEN=<your Discord bot token>
```

7. Run the bot
```
python mybot.py
```


## Usage

The bot will respond to the following command in the Discord chat:

- !gpt <prompt>: The bot will generate a response using OpenAI's language generation model. The prompt should be written after the !gpt command.

## Contributing

Please feel free to contribute to this project by submitting pull requests or reporting issues.






