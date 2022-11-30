import logging

from app.data.db import Session
from app.genome import convert_rna_to_amino_acid, convert_dna_to_rna
from app.plot import draw_plot


class CommandInterface:
    required_args = None
    help_str = None

    def __init__(self, payload: dict):
        self.payload = payload

    def validate(self) -> bool:
        try:
            if self.help_str is None:
                raise NotImplementedError
            if self.required_args is None:
                raise NotImplementedError
            for key in self.payload:
                if key not in self.required_args:
                    raise KeyError
            return True
        except Exception as e:
            print(e)
            return False

    def print_help(self):
        print('Usage:', self.help_str)

    def run(self):
        raise NotImplementedError


class DrawPlotCommand(CommandInterface):
    required_args = ('step', 'genome')
    help_str = '--genome $genome:str --step $step:int'

    def run(self):
        print(self.payload.get('genome'), self.payload.get('step', 100))
        draw_plot(self.payload.get('genome'), self.payload.get('step', 100))


class ConvertCommand(CommandInterface):
    required_args = ('dna2rna', 'rna2amino')
    help_str = 'convert --dna2rna=$genome-str'

    def run(self):
        try:
            if self.payload.get('dna2rna', False):
                with Session() as session:
                    sequence = convert_dna_to_rna(
                        self.payload.get('dna2rna'),
                        session
                    )
                    print(sequence)
            else:
                with Session() as session:
                    sequence = convert_rna_to_amino_acid(
                        self.payload.get('rna2amino'),
                        session
                    )
                    print(sequence)
        except Exception as ex:
            logging.error(ex)


class WelcomeCommand(CommandInterface):
    required_args = ()
    help_str = 'welcome # no args required'

    def validate(self) -> bool:
        return True

    def run(self):
        print('Welcome! Build was successful ;)')


included_commands = {
    'draw': DrawPlotCommand,
    'convert': ConvertCommand,
    'welcome': WelcomeCommand
}


def parse(args: list) -> dict:
    parsed = dict()
    for arg in args:
        key, value = arg.split('=')
        if value.isdigit():
            parsed[key[2:]] = int(value)
        else:
            parsed[key[2:]] = value
    return parsed


def execute(argv: list) -> int:
    """
    returns status code:
    0 - OK
    1 - invalid command
    2 - invalid arguments
    """
    try:
        file_name, command_name, *args = argv
        if command_name not in included_commands:
            raise NotImplementedError
        Command = included_commands.get(command_name)
        parsed = parse(args)
        command = Command(parsed)
        command.validate()
        command.run()
        return 0
    except NotImplementedError as error:
        logging.error(error)
        return 1
