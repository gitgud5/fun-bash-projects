## Essential Concepts in Bash Scripting

### 1. Changing Permissions
   - In Unix-like operating systems, permissions control access to files and directories, ensuring security and privacy.
   - The `chmod` command allows users to modify permissions for files and directories.
   - Syntax: `chmod [options] mode file`
   - Here, `mode` specifies the permissions to set, and `file` is the file or directory whose permissions are being modified.
   - The `mode` can be represented in different ways:
     - **Symbolic Mode**: Uses symbols such as `u` (user), `g` (group), `o` (others), `+` (add permission), `-` (remove permission), and `=` (set exact permissions).
       Example: `chmod u+rwx,g+r,o+r myfile`
     - **Numeric Mode**: Uses numeric values to represent permissions:
       - `4` (read), `2` (write), `1` (execute).
       - The sum of these values represents the permissions. For instance, `7` signifies read, write, and execute permissions.
       Example: `chmod 755 myfile`
   - Permissions include:
     - `r` (read): Allows reading of the file's contents.
     - `w` (write): Allows modification of the file's contents.
     - `x` (execute): Allows executing the file if it is a script or program.
   - Additionally, permissions can be modified for the file owner, group, and others.
   - Changing permissions is essential for managing access to files and directories, ensuring proper security measures are in place.


### 2. Conditionals
   - Conditionals are used for making decisions based on certain conditions in scripts.
   - Common operators include:
     - `==` or `-eq`: Equals to
     - `!=` or `-ne`: Not equals to
     - `-lt`: Less than
     - `-gt`: Greater than
     - `-ge`: Greater than or equal to
     - `-le`: Less than or equal to
     - `=~`: Regex matching

### 3. File Conditions
   - File conditions are used to check properties of files in scripts.
   - Common file condition checks include:
     - `-e [file]`: File exists
     - `-r [file]`: Readable file
     - `-h [file]`: Symlink (Symbolic link)
     - `-d [file]`: Directory
     - `-w [file]`: Writable file
     - `-s [file]`: File size greater than 0 bytes
     - `-f [file]`: Regular file exists

### Explanation of Symlink (Symbolic Link)
   - A symlink, or symbolic link, is a file that serves as a reference or shortcut to another file or directory.
   - It acts as a reference to the target file or directory.
   - Symlinks are useful for creating shortcuts or aliases to files or directories, and they can span across different filesystems.
   - They provide flexibility and convenience in organizing and accessing files and directories within a system.
