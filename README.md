# autoCPPFiles
{Epitech} bash script project made by Jeremy Calosso-merlino that auto generate .hpp/.cpp files with the filename passed as argument<br />
*this script is hand made. no tools as Chat GPT or something else has been used*

## Installation
Just download the 'createCPPFiles.sh' and place it at root of your Disk

Open your ~/.bashrc in whatever IDE that you want (as nano, emacs, vscode etc...) and add the following alias:<br />
```
alias cppfiles='~/createCPPFiles.sh'
```

When it's done, save your file and execute the 'source .bashrc' command at the root.

Now, you can USE !

## Usage

Use command : **cppfiles** for print usage

To create files in directory, you can use :<br />
```
cppfiles <filename> directory_name
```
If the directory doesn't exists, the script will create it !

If the files already exists, the scripts will not overwrite them and will print you an error.

## Details

Every generated files will contain the epitech header and automatically create class, constructor and destructor.

It doesn't make sense to abuse of this programm and you should learn to write these basic things yourself.

If you want features or bugfix, I'll appreciate your reprots.
