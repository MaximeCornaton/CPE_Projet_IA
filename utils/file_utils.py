import os
import shutil

def create_folder_if_not_exists(folder_path : str) -> bool:
    """Create a folder if it does not exist
    Args:
        folder_path (str): path to the folder
    Returns:
        Bool: True if folder is created, False if folder already exists
    """
    if not os.path.exists(folder_path):
        os.makedirs(folder_path)
        return True
    return False

def remove_folder_if_exists(folder_path : str) -> bool:
    """Remove a folder if it exists
    Args:
        folder_path (str): path to the folder
    Returns:
        Bool: True if folder is removed, False if folder does not exist
    """
    if os.path.exists(folder_path):
        shutil.rmtree(folder_path)
        return True
    return False

def remove_files_in_folder(folder_path : str) -> bool:
    """Remove all files in a folder
    Args:
        folder_path (str): path to the folder
    Returns:
        Bool: True if files are removed, False if folder does not exist
    """
    if os.path.exists(folder_path):
        for file in os.listdir(folder_path):
            file_path = os.path.join(folder_path, file)
            try:
                if os.path.isfile(file_path):
                    os.unlink(file_path)
            except Exception as e:
                print(e)
        return True
    return False

def file_exists(file_path : str) -> bool:
    """Check if a file exists
    Args:
        file_path (str): path to the file
    Returns:
        Bool: True if file exists, False otherwise
    """
    return os.path.isfile(file_path)

def get_files_in_folder(folder_path : str) -> list:
    """Get all files in a folder
    Args:
        folder_path (str): path to the folder
    Returns:
        list: list of files in the folder
    """
    return os.listdir(folder_path)

def save_text_data(content : str, path : str) -> bool:
    """Save text data to a file
    Args:
        content (str): content to be saved
        path (str): path to the file
    Returns:
        Bool: True if file is saved, False otherwise
    """
    try:
        with open(path, 'w') as f:
            f.write(content)
        return True
    except Exception as e:
        print(e)
        return False