import sys

class Logger(object):
    def __init__(self, filename='result.log'):
        self.terminal = sys.stdout
        self.log = open(filename, 'w')

    def write(self, message):
        self.terminal.write(message)
        self.log.write(message)
        self.terminal.flush()  # Ensure immediate output to terminal
        self.log.flush()       # Ensure immediate output to file

    def flush(self):
        self.terminal.flush()
        self.log.flush()