import discord
import openai
import yaml

# Load the YAML file
with open("config.yaml", "r") as file:
    config = yaml.safe_load(file)

# Access the values in the config file
openai_api_key = config["openai_api_key"]
app_client_id = config["app_client_id"]


intents = discord.Intents.default()
intents.members = True
client = discord.Client(intents=intents)
openai.api_key = openai_api_key


@client.event
async def on_ready():
    print(f'Bot connected. User: {client.user}')



@client.event
async def on_message(message):
    if message.content.startswith('!gpt'):
        prompt = message.content[5:]  # removing the !gpt prefix
        response = gpt_response(prompt)
        await message.channel.send(response)
        print(response)

def gpt_response(prompt):
    print("Sending request to API with prompt:", prompt)
    response = openai.Completion.create(
        engine="text-davinci-002",
        prompt=prompt,
        max_tokens=1024,
        n=1,
        stop=None,
        temperature=0.5,
    ).choices[0].text
    print("Received response from API:", response)
    return response

client.run(app_client_id)

