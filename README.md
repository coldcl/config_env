# config_env

# 1. ohmyzsh
https://github.com/coldcl/ohmyzsh

## zsh plugin
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /home/user/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions /home/user/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# 2. git
## diff so fancy
	mkdir -p ~/config/bin
	cd ~/config/bin
	git clone https://github.com/so-fancy/diff-so-fancy diffsofancy
	chmod +x diffsofancy/diff-so-fancy
	ln -s ~/config/bin/diffsofancy/diff-so-fancy ~/config/bin/diff-so-fancy

# 3. ghidra
https://github.com/coldcl/ghidra

## ubuntu
	https://github.com/NationalSecurityAgency/ghidra/releases
	unzip ghidra_10.1.4_PUBLIC_20220519.zip 
	sudo apt install default-jdk
	./ghidra/ghidraRun

	ln -s ~/config/ghidra/ghidraRun ~/config/bin/ghidra
	ghidra

# 4. gef
https://github.com/coldcl/gef
