import os
import sys
import asyncio
import time
from openai import AsyncOpenAI

max_length = 15500

file_path = sys.argv[1]
file_name = sys.argv[2]
file = open(file_path + "/" + file_name)
file_content = file.read()
file_content = file_content.split("=",1)[1]
file.close()

messages = []
answer = ""

client = AsyncOpenAI(
    api_key = os.getenv('OPENAI_API_KEY'),
)

def split_string(input_string, max_length):
    # Check if the string is already within the maximum length
    if len(input_string) <= max_length:
        return [input_string]
    # Split the string into chunks of maximum length
    chunks = [input_string[i:i + max_length] for i in range(0, len(input_string), max_length)]
    return chunks

async def main(messages) -> None:
    messages.append(
        {
            "role":"user",
            "content":"Finito il contenuto del file, ora fammi un elenco puntato degli errori sintattici e grammaticali"
        }
    )
    chat_completion = await client.chat.completions.create(
        messages = messages,
        model = "gpt-3.5-turbo-1106",
    )
    return chat_completion.choices[-1].message.content or ""

strs_to_send = split_string(file_content, max_length)

for str in strs_to_send:
    messages.append(
        {
            "role": "user",
            "content": "Individua ed elenca in un elenco puntato possibili errori grammaticali (Ignora completamente errori relativi a mancanza di punteggiatura o formato dei link) o typos e dimmi dove si trovano." + str,
        }
    )
    answer += asyncio.run(main(messages))
    time.sleep(25)
    messages = []

print(answer)