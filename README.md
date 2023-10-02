# Termux Setup for Open Interpreter

- Install [Termux](https://github.com/termux/termux-app/releases/tag/v0.118.0)
- Install [Termux:API](https://github.com/termux/termux-api-package/releases/tag/v0.57)
- Open Termux and run the following single command to set up Open Interpreter:
  ```bash
  pkg update -y && pkg upgrade -y && pkg install git -y && git clone https://github.com/Arrendy/open-interpreter-termux && cd open-interpreter-termux && sh setup.sh
  ```
- Run `termux-setup-storage` twice to grant storage permissions.
- Set your OpenAI API key: `export OPENAI_API_KEY=<apikey>`
- Start Open Interpreter: `interpreter`
- ...
- Profit

Please open an issue for any errors you encounter and include as much information as possible.
