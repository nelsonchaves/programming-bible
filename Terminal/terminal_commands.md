### Basic Terminal Commands Explained

Understanding terminal commands is essential for navigating and managing files and processes. Here's a simplified guide to some basic commands:

#### Creating Directories

**The `mkdir` Command:** This stands for "Make Directory." Use it to create a new directory (or folder). For example, to create a directory named "neptune":

```zsh
# Create a directory named 'neptune'
mkdir neptune
```

**Creating Nested Directories:** Use the `-p` option to create multiple nested directories at once. For example, to create a "neptune" directory inside a "space" directory:

```zsh
# Create nested directories
mkdir -p space/neptune
```

#### Managing Processes

**Finding a Process ID (PID):** If you need to find the PID of a process (like a server running on a specific port), use the `lsof` command. For instance, to find a process using TCP port 3000:

```zsh
# Find PID of process using TCP port 3000
lsof -wni tcp:3000
```

**Killing a Process:** Once you have the PID, you can kill the process using the `kill` command. Replace `<PID>` with the actual process ID:

```zsh
# Kill a process using its PID
kill -9 <PID>
```
