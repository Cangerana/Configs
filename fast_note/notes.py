#!/usr/bin/python

import argparse
from datetime import datetime
import os
from pathlib import Path

"""TODO
    Format the read output
    Create function to delete a specific note by id
    Create a method to search notes
    Create a priority groups
    Create a documentation
"""

def _note_files():
    name_files = ['work', 'college', 'general']
    data_dir = Path(os.path.dirname(__file__)).joinpath('.data')

    return (data_dir.joinpath(nf) for nf in name_files)


def _find_file(tag) -> str:
    data_dir = Path(os.path.dirname(__file__)).joinpath('.data')
    file = data_dir.joinpath(tag)

    if not file.exists():
        print(f'Notes {tag} not exist!')
        exit()

    return file


def create_files():
    current_path = Path(os.path.dirname(__file__))
    data_dir = current_path.joinpath('.data')
    
    if not data_dir.exists(): data_dir.mkdir()

    [f.touch() for f in _note_files()]


def clear(tag):
    current_path = Path(os.path.dirname(__file__))
    data_dir = current_path.joinpath('.data')
    to_delete = data_dir.joinpath(tag)

    if tag == 'all':
        [f.unlink(missing_ok=True) for f in _note_files()]
    elif to_delete.exists():
        to_delete.unlink()

    print(f'Cleaned {tag} notes!')


def delete_note(tag):
    pass


def write(text, tag) -> bool:
    file = _find_file(tag)
    note = f'{tag.upper()} - {datetime.today()}: {text}\n'

    with open(file, 'a') as f:
        return f.write(note)


def read(tag) -> None:
    files = [_find_file(tag)] if tag != 'all' else _note_files()

    for file in files:
        with open(file, 'r') as f:
            print(f.read())


def run(args) -> None:
    create_files()

    if args.write:
        write(args.write, args.tag.lower())
    elif args.read:
        read(args.tag)
    elif args.clear:
        clear(args.tag)
    else:
        print('Undefined params!')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-t', '--tag', default='all', type=str)
    parser.add_argument('-w', '--write', default='', type=str)
    parser.add_argument('-r', '--read', action='store_true')
    parser.add_argument('-c', '--clear', action='store_true')

    args = parser.parse_args()
    run(args)
