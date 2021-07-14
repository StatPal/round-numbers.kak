define-command \
    -params 1 \
    -docstring "
        round-numbers DIG
        
        round-numbers to DIG number of decimal place
        " \
    round-numbers \
%{
    evaluate-commands -save-regs 'c' %{
        # "c" stores the number of digits we want to use
        set-register c %sh{ echo $(( $1 < 0 ? 3 : $1 )) }

            # Search for tokens that look like decimal numbers.
            execute-keys s [+-]?((\d+(\.\d*)?)|(\.\d+)) <ret>
            # Print the number with shell.
            execute-keys | "read val; printf $(echo '%%0.'%reg{c}'f\n') $val" <ret>
    }
}

