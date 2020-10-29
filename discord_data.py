import discord
import asyncio
from discord.ext import commands

bot = discord.Client()

@bot.event
async def on_ready():
    print('Bot is ready')

          
@bot.event
async def on_message(message):
    print(message.content)

    if message.content == 'hola bot':
        await message.channel.send('hola')

bot.run('NzcxMjI1MzU4MjIwNjU2NjQy.X5pBlg.CawnPftkPrJUsmAVNpxSZYWO0DU')
