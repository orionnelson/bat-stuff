import requests
import json
import argparse
import pyperclip
url = "https://api.eleuther.ai/completion"
remove_input = 'true'
response_length = 256
temp = 0.8
top = 0.9

headers={
                'Accept-Encoding': "gzip, deflate, br",
                'Host': "api.eleuther.ai",
                'Origin': "https://6b.eleuther.ai/",
                'Content-Type' : "application/json",
                'Accept': "application/json",
                'Referer': "https://6b.eleuther.ai/",
                'Sec-Fetch-Dest' : "empty",
                'Sec-Fetch-Mode' : 'cors',
                'Sec-Fetch-Site' : 'same-site'
    
    }


def request(context):
    
    response = requests.post(url,allow_redirects=False, json={
                    "context": context,
                    "remove_input": remove_input,
                    "response_length": response_length,
                    "temp": temp,
                    "topP": top
            },headers=headers)
    out =json.loads(response.text.replace(']','').replace('[',''))
    return str(out['generated_text'])



context = pyperclip.paste()
print(context)
interp = ""
interp = request(context)
print(interp)
pyperclip.copy(interp)
pyperclip.paste()


    
    

