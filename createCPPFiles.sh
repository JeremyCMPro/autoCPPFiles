currentDir=$(basename $(pwd))

epitechHeaderCpp="/*
** EPITECH PROJECT, 2023
** $currentDir
** File description:
** $1
*/

#include \"$1.hpp\"

$1::$1()
{
}

$1::~$1()
{
}"

epitechHeaderHpp="/*
** EPITECH PROJECT, 2023
** $currentDir
** File description:
** $1
*/

#ifndef ${1^^}_HPP_
    #define ${1^^}_HPP_

    class $1 {
        public:
            $1();
            ~$1();

        protected:
        private:
    };

#endif /* !${1^^}_HPP_ */"

if [ $# -eq 0 ]
then
    echo "Usage: creatCPPFiles.sh <filename> [directory]"
    exit 84;
else
    if [ $# -eq 2 ]
    then
        if [ ! -d $2 ]
        then
            echo "Directory '$2' does not exist"
            echo "But... Let me do it for you"
            mkdir $2
        fi
        if [ $2 -d] && [ -f $2/$1.cpp ] || [ -f $2/$1.hpp ]
        then
            echo "Files already exist"
            exit 84;
        else
            echo "Creating files for '$1' in directory '$2'"
            touch $2/$1.cpp
            touch $2/$1.hpp
            echo "$epitechHeaderCpp" > "$2/$1.cpp"
            echo "$epitechHeaderHpp" > "$2/$1.hpp"
        fi
    else
        if [ -f $1.cpp ] || [ -f $1.hpp ]
        then
            echo "Files already exist"
            exit 84;
        fi
        echo "Creating files for '$1'"
        if [ ${1:0:1} == 'I' ]
        then
            touch $1.hpp
            echo "$epitechHeaderHpp" > "$1.hpp"
            exit 0;
        else
            touch $1.cpp
            touch $1.hpp
            echo "$epitechHeaderCpp" > "$1.cpp"
            echo "$epitechHeaderHpp" > "$1.hpp"
        fi
    fi
fi
