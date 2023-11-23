### SSH Key Commands

Secure Shell (SSH) keys are crucial for secure communication and access to remote systems. Here’s a straightforward guide to the basic SSH key commands:

#### Creating a New SSH Key

```zsh
# Generate a new SSH key
ssh-keygen -t rsa -C "YOUR@EMAIL.com"
```

This command creates a new SSH key, using the provided email as a label.

#### Finding Your SSH Key

To display your SSH key, use the `cat` command. You can find different types of keys depending on which one you've generated:

```zsh
# Display the RSA SSH key
cat ~/.ssh/id_rsa.pub

# Other key types (use as needed):
cat ~/.ssh/id_dsa.pub
cat ~/.ssh/id_ed25519.pub
cat ~/.ssh/id_<key-type-here>.pub
```

#### Listing All SSH Keys

```zsh
# List all public SSH keys
ls ~/.ssh/*.pub
```

#### Copying SSH Key to Clipboard

```zsh
# Copy the RSA SSH key to clipboard
pbcopy < ~/.ssh/id_rsa.pub
```

(Note: `pbcopy` works on macOS. If you're using a different OS like Linux, you might use `xclip` or `xsel` instead.)
