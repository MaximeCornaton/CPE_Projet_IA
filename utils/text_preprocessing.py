def has_no_letters(line):
    return not any(c.isalpha() for c in line)

def has_no_digits(line):
    return not any(c.isdigit() for c in line)

def has_no_punctuation(line):
    return not any(c in '.,;:?!' for c in line)

def has_no_special_char(line):
    return not any(c in '()[]{}<>@#$%^&*_-=+|\/~`' for c in line)

def is_empty_line(line):
    return line == '\n'

def is_too_short(line):
    return len(line) < 5