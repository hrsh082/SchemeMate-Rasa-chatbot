1. I made the venv named: '.RASA_CBvenv' | Command: 'python -m venv .RASA_CBvenv'
2. To avtivate the venv, Command: '.RASA_CBvenv\Scripts\activate'
3. To deactivate, Command: deactivate
4. To run chatbot on terminal: rasa init

*NOTE*: Everything that i install using pip is done in an ACTIVE venv, do the same for future installs

**Installed:**
1. pip install rasa (installs rasa and tensorflow)


**UI Setup**
1. In rasa, do socket IO config by following this url: https://rasa.com/docs/rasa/connectors/your-own-website/#websocket-channel
    In the credentials.yml file. paste the below code:
socketio:
  user_message_evt: user_uttered
  bot_message_evt: bot_uttered
  session_persistence: false

2. Run the rasa server using below command:
    > rasa run -m models --enable-api --cors "*"

3. Create an index.html file and use the official rasa's chat widget as per the link: https://rasa.com/docs/rasa/connectors/your-own-website/#chat-widget and update socket URL

4. Open new terminal and run below command in root directory
  > python -m http.server 8000

5. After that open browser and access the chatbot from this URL: http://localhost:8000/index.html

**To run this file:**
Install RASA on your device and copy the contents of these files into your files which will be created by default when you install rasa.

![RASA_Working3](https://github.com/user-attachments/assets/ab533f1e-855f-4a02-a7bc-fb81d002a010)
![RASA_Working2](https://github.com/user-attachments/assets/4381a05e-4170-493e-b207-2bc23d6ae91d)
![RASA_Working1](https://github.com/user-attachments/assets/82f3feb1-5f4f-40df-845c-b190f26d39b4)
