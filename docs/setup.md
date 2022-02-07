# How to setup the project?
The Poject is fairly simple to setup however has some steps.

### Install the project
Pull the repo to your local machine from Github
```bash
git clone git@github.com:Cybericecream/portfolio_root.git && cd portfolio_root
```

### Pull the submodules
This project is reliant on submodules and not always when you pull the project will the submodules be pulled. Use this command to pull the repos.
```bash
git submodule update --init --recursive
```

### Install the Node Modules
As it stands I have yet to figure out a good way to install the node modules automatically during a docker build while also allowing for easy developement, but if you have a solution please create a git merge or let me know.
```bash
cd backend && npm i && cd ../frontend && npm i && ../
```

### Add the Project Dev domain to hosts
This project is reliant on using a local url in the hosts directory that points to localhost.

Add this line to your Hosts
```
127.0.0.1 portfolio.d3v
```
#### How to setup Hosts
[Windows](https://www.onmsft.com/how-to/how-to-modify-your-hosts-file-in-windows-10-and-why-you-might-want-to)
    - [MacOS](https://setapp.com/how-to/edit-mac-hosts-file)
    - [Linux (Ubuntu)](https://websiteforstudents.com/how-to-edit-the-local-hosts-file-on-ubuntu-18-04-16-04/)

### Run the Project
```bash
docker-compose up --build
```

### Go to site
Presuming all the above went as expected go to [Portfolio.d3v](http://portfolio.d3v)
