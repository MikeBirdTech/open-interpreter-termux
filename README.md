# Termux Setup for Open Interpreter

- Install [Termux](https://github.com/termux/termux-app/releases/tag/v0.118.0)

- Install [Termux:API](https://github.com/termux/termux-api/releases/tag/v0.50.1)

- Open Termux and run the following:

_Note: This takes a long time_

Update packages and sources

```bash
yes | pkg update
```

Install required packages

```bash
yes | pkg install termux-api python-pip cmake ninja patchelf build-essential matplotlib rust binutils libzmq
```

Allow storage permissions for termux after running:

```bash
termux-setup-storage
```

_Note: Android will ask you to grant permission after the first time which causes the command to not succeed initially_

So run the same command again and say 'Yes'

```bash
termux-setup-storage
```

Install open interpreter

```bash
pip install open-interpreter
```

Set your OpenAI API key:

```bash
export OPENAI_API_KEY=<apikey>
```

Start Open Interpreter
```bash
interpreter
```
- ...
- Profit
