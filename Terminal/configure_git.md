In the following steps with the ones you used for your Github account.
```zsh
git config --global color.ui true
git config --global user.name "YOUR NAME"
git config --global user.email "YOUR@EMAIL.com"
ssh-keygen -t rsa -C "YOUR@EMAIL.com"
```
The next step is to take the newly generated SSH key and add it to your Github account. You want to copy and paste the output of the following command and paste it here.
```zsh
cat ~/.ssh/id_rsa.pub
```
Once you've done this, you can check and see if it worked:
```zsh
ssh -T git@github.com
```
You should get a message like this:
```
Hi excid3! You've successfully authenticated, but GitHub does not provide shell access.
```
