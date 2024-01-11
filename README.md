# Termux Setup for Open Interpreter

- Install [Termux](https://github.com/termux/termux-app/releases/tag/v0.118.0)

- Install [Termux:API](https://github.com/termux/termux-api/releases/tag/v0.50.1)

- Open Termux and run the following:

_Note: This takes a long time_

    ```bash
    yes | pkg update

    yes | pkg install termux-api python-pip cmake ninja patchelf build-essential matplotlib rust binutils libzmq

    pip install numpy open-interpreter
    ```

- Run `termux-setup-storage` twice to grant storage permissions.

_Note: Android will ask you to grant permission after the first time which causes the command to not succeed initially_

- Set your OpenAI API key: `export OPENAI_API_KEY=<apikey>`

- Start Open Interpreter: `interpreter`
- ...
- Profit
