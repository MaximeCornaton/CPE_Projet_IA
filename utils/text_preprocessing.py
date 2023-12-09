import re


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

def is_too_long(line : str, max_length : int) -> bool:
    """Check if line is too long
    Args:
        line (str): line to check
        max_length (int): maximum length of the line
    Returns:
        bool: True if line is too long, False otherwise
    """
    return len(line) > max_length

def has_not_enough_words(line : str, min_words : int) -> bool:
    """Check if line has not enough words
    Args:
        line (str): line to check
        min_words (int): minimum number of words in the line
    Returns:
        bool: True if line has not enough words, False otherwise
    """
    return len(line.split()) < min_words

def has_a_link(line : str) -> bool:
    """Check if line has a link
    Args:
        line (str): line to check
    Returns:
        bool: True if line has a link, False otherwise
    """
    return 'http' in line

def contains_one_of(line : str, words : list) -> bool:
    """Check if line contains one of the words
    Args:
        line (str): line to check
        words (list): list of words to check
    Returns:
        bool: True if line contains one of the words, False otherwise
    """
    return any(word in line for word in words)

def remove_brackets_and_content(line: str) -> str:
    """Remove content within square brackets from a line
    Args:
        line (str): line to remove content within square brackets from
    Returns:
        str: line without content within square brackets
    """
    return re.sub(r'\[.*?\]', '', line)

def contains_brackets(line : str) -> bool:
    """Check if line contains brackets
    Args:
        line (str): line to check
    Returns:
        bool: True if line contains brackets, False otherwise
    """
    return '[' in line and ']' in line

def contains_curly_brackets(line : str) -> bool:
    """Check if line contains curly brackets
    Args:
        line (str): line to check
    Returns:
        bool: True if line contains curly brackets, False otherwise
    """
    return '{' in line and '}' in line

def remove_200E(line : str) -> str:
    """Remove unicode 200E from a line
    Args:
        line (str): line to remove unicode 200E from
    Returns:
        str: line without unicode 200E
    """
    return line.replace('[U+200E]', '')

def clean_line(line : str) -> str:
    """Clean a line
    Args:
        line (str): line to clean
    Returns:
        str: cleaned line
    """
    #line = line.strip()
    line = remove_brackets_and_content(line)
    line = remove_200E(line)
    line = remove_word_from_if_starts_with(line, '^ ')
    return line

def start_with(line : str, word : str) -> bool:
    """Check if line starts with word
    Args:
        line (str): line to check
        word (str): word to check
    Returns:
        bool: True if line starts with word, False otherwise
    """
    return line.startswith(word)

def remove_word_from_if_starts_with(line : str, word : str) -> str:
    """Remove word from line if line starts with word
    Args:
        line (str): line to remove word from
        word (str): word to check
    Returns:
        str: line without word if line starts with word, line otherwise
    """
    if start_with(line, word):
        line = line.replace(word, '', 1)
    return line