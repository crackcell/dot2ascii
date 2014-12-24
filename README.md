        __         __   ______                    __ __ 
    .--|  |.-----.|  |_|__    |.---.-.-----.----.|__|__|
    |  _  ||  _  ||   _|    __||  _  |__ --|  __||  |  |
    |_____||_____||____|______||___._|_____|____||__|__|

# Dot2Ascii

Compile graphviz's dot source file to ASCII graphs.

## Example

    ./bin/dot2ascii test/test1.dot 

it will output:

    +---+     +---+     +---+
    | a | --> | b | --> | d |
    +---+     +---+     +---+
                ^
                |
                |
              +---+
              | c |
              +---+
