
import json


def load_text_data(path : str) -> list:
    """Load text data from a file
    Args:
        path (str): path to the file
    Returns:
        list: list of lines in the file
    """
    with open(path, 'r', encoding='utf-8') as f:
        data = f.readlines()
    return data

def load_json_data(path : str) -> dict:
    """Load json data from a file
    Args:
        path (str): path to the file
    Returns:
        dict: dictionary of the json data
    """
    with open(path, 'r', encoding='utf-8') as f:   
        data = json.load(f)
    return data