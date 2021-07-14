define-command \
    -params 1 \
    -docstring "
        round-numbers to two decimal place
        " \
    round-numbers \
%{
    evaluate-commands -save-regs 'c' %{
        # "c" stores the number of digits we want to use
        set-register c %sh{ echo $(( $1 == 0 ? 3 : $1 )) }

            # Search for tokens that look like zero-padded decimal numbers.
            execute-keys s [+-]?((\d+(\.\d*)?)|(\.\d+)) <ret>
            # Apply our operator with shell arithmetic.
            execute-keys | "read val; printf '%%0.3f\n' $val" <ret>
    }
}

