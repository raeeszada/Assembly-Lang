# GitHub Codespaces

GitHub Codespaces is a way of running Easy-MASM in your browser. Since it runs in your browser, this solution will work on any device, including MacOS devices and Chromebooks. It's recommended that you have some familiarity with git and GitHub before using GitHub Codespaces (though you can always use this as an opportunity to learn git and GitHub).

## A Bit About Codespaces

GitHub Codespaces is a cloud-based development environment that allows you to write, run, and debug code from within your web browser. It comes with a built-in code editor, terminal, and debugger, and you can use it to work on your Git repositories. With GitHub Codespaces, you can quickly spin up a development environment for any of your repositories, without the need to set up a local development environment on your own computer. You can use GitHub Codespaces to work on your projects from anywhere, on any device, and collaborate with your team in real-time. You can learn more about Codespaces [here](https://github.com/features/codespaces).

## Getting Setup With Codespaces for Easy-MASM

Since Codespaces runs on Linux, the steps for setting up Easy-MASM on Codespaces is similar to the steps to set it up on Linux. For your convenience, however, I've prepared some automation scripts that may help you speed up the process. 

### Step 1 - Setting up GitHub and Creating Your Repository

Firstly, ensure you have a GitHub account, as you'll need one to have access to Codespaces. Next, you'll need to create a new Repository where your code will live. I'd recommend calling this "masm", "masm-work", "comp-2660" or something similar. 

**IMPORTANT**: Rather than creating an empty repository, we'll be **importing** the easy-masm repository. Importing a repository is similar to forking a repository, but gives you the ability to sever any ties with the original repository from the get go. If you prefer to fork, you can, but I recommend importing rather than forking so you can make your schoolwork private.

Now, to import the easy-masm repository, first go to [https://github.com/new/import](https://github.com/new/import). Under "Your old repository's clone URL", paste the following:

```
https://github.com/jere-mie/easy-masm
```

After this, name your repository whatever you like, and make sure to click the "Private" option if you don't want people to be able to see your schoolwork. You can now click "Begin import", and after a few seconds your repository should be ready.

### Step 2 - Opening in and Setting up Codespaces

Once your repository is created, you should be taken to the repository's homepage. Now, you'll need to press the green "Code" button, click on the "Codespaces" tab that drops down, and then press "Create codespace on Main". 

![image](https://user-images.githubusercontent.com/47261508/210438283-8fc70727-269b-48d4-b65d-95f663a67be3.png)

A new tab should open up and you should be brought to an online version of VS Code. It may take a minute or so to fully load. Thanks to the power of Docker and Development Containers, all of the prerequesite software is installed, and you're ready to start developing!

Once this is done, you'll be able to run the sample `src/source.asm` file by typing in the terminal `./run.sh source`. The first time you run it you might see a bunch of text output on the screen; this is just wine running itself for the first time. Subsequent runs should be a bit quicker. Play around with this file, make some changes, and see how the output changes when you run it.

### Step 3 - Committing your files

It's important whenever you're done coding that you commit all of your changes. If you're not familiar with git, I highly recommend you learn the basics of it. You can check out a decent tutorial [here](https://www.youtube.com/watch?v=HkdAHXoRtos). Essentially though, committing and pushing your changes just makes it such that the changes to your repository are saved. This is important if you want to keep your code saved, or if you don't want to have to re-set up the repository each time you want to work on your code. A very simple way to do this is to type the following in your terminal:

```bash
git add -A
git commit -m "input some message here"
git push
```

Congratulations! You've now set up Easy-MASM to run in GitHub Codespaces and pushed your code to a private GitHub repository.

## Helpful Tips

### Pricing

While Codespaces is free, there is a limit to how much you can use it each month for free. If you're just using Codespaces for this and a few classes, you shouldn't ever hit this limit. However, if you plan on using Codespaces a lot (like I do) you may want to consider deleting codespaces right after you're done using them. This will make it such that you reach that limit much slower.

### Syntax Highlighting

You can get very good syntax highlighting by installing [this VS Code extension](https://marketplace.visualstudio.com/items?itemName=blindtiger.masm). This will improve your developer experience a lot!
