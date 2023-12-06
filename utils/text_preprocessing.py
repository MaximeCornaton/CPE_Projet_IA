def has_no_letters(line : str) -> bool:
    """Check if line has no letters
    Args:
        line (str): line to check
    Returns:
        bool: True if line has no letters, False otherwise
    """
    return not any(c.isalpha() for c in line)

def has_no_digits(line : str) -> bool:
    """Check if line has no digits
    Args:
        line (str): line to check
    Returns:
        bool: True if line has no digits, False otherwise
    """
    return not any(c.isdigit() for c in line)

def has_no_punctuation(line : str) -> bool:
    """Check if line has no punctuation
    Args:
        line (str): line to check
    Returns:
        bool: True if line has no punctuation, False otherwise
    """
    return not any(c in '.,;:?!' for c in line)

def has_no_special_char(line : str) -> bool:
    """Check if line has no special characters
    Args:
        line (str): line to check
    Returns:
        bool: True if line has no special characters, False otherwise
    """
    return not any(c in '()[]{}<>@#$%^&*_-=+|\/~`' for c in line)

def is_empty_line(line : str) -> bool:
    """Check if line is empty
    Args:
        line (str): line to check
    Returns:
        bool: True if line is empty, False otherwise
    """
    return line == '\n'

def is_too_short(line : str, min_length : int) -> bool:
    """Check if line is too short
    Args:
        line (str): line to check
        min_length (int): minimum length of the line
    Returns:
        bool: True if line is too short, False otherwise
    """
    return len(line) < min_length