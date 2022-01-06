#!/usr/bin/python

import argparse
from datetime import datetime
import os

def write(text, tag):
    file = find_file(tag)
    note = f'{tag.upper()} - {datetime.today()}: {text}\n'

    with open(file, 'a') as f:
        f.write(note)


def read(tag):
    file = find_file(tag)
    with open(file, 'r') as f:
        print(f.read())


def find_file(tag):
    file = os.path.dirname(__file__)
    if tag == 'work':
        file += '/.data/work_notes'
    elif tag == 'facu':
        file += '/.data/facu_notes'
    else:
        file += '/.data/geral_notes'

    return file


def run(args):
    if args.write:
        write(args.write, args.tag.lower())
    elif args.read:
        read(args.tag)
    else:
        print('Undefined params!')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-t', '--tag', default='all', type=str)
    parser.add_argument('-w', '--write', default='', type=str)
    parser.add_argument('-r', '--read', action='store_true')

    args = parser.parse_args()
    run(args)

