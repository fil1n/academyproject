import logging

from sqlalchemy.exc import SQLAlchemyError

from app.data.db import Session
from app.data.relations import (
    get_rna_to_rnd_relation,
    get_rna_codon_to_amino_acid_relation
)
from app.genome import convert_rna_to_amino_acid, convert_dna_to_rna
from app.plot import draw_plot


class Command:
    required_args = None
    help_str = None

    def __init__(self, payload: dict):
        self.payload = payload

    def validate(self) -> bool:
        if self.help_str is None:
            raise NotImplementedError
        if self.required_args is None:
            raise NotImplementedError
        for key in self.payload:
            if key not in self.required_args:
                raise ValueError
        return True

    def print_help(self):
        print('Usage:', self.help_str)

    def run(self):
        raise NotImplementedError


class DrawPlotCommand(Command):
    required_args = ('step', 'genome')
    help_str = '--genome $genome:str --step $step:int'

    def run(self):
        draw_plot(self.payload.get('genome'), self.payload.get('step', 100))


class ConvertCommand(Command):
    required_args = ('dna2rna', 'rna2amino')
    help_str = 'convert --dna2rna=$genome-str'

    def run(self):
        with Session() as session:
            if self.payload.get('dna2rna', False):
                relation = get_rna_to_rnd_relation(
                    session
                )
                sequence = convert_dna_to_rna(
                    self.payload.get('dna2rna'),
                    relation
                )
            else:
                relation = get_rna_codon_to_amino_acid_relation(
                    session
                )
                sequence = convert_rna_to_amino_acid(
                    self.payload.get('rna2amino'),
                    relation
                )
            print(sequence)


class WelcomeCommand(Command):
    required_args = ()
    help_str = 'welcome # no arguments required'

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


def execute(argv: list):
    try:
        file_name, command_name, *args = argv
        CommandBlueprint = included_commands.get(command_name)
        parsed = parse(args)
        command = CommandBlueprint(parsed)
        command.validate()
        command.run()
    except ValueError as value_error:
        logging.error(value_error)
    except KeyError as key_error:
        logging.error(key_error)
    except NotImplementedError as implementation_error:
        logging.error(implementation_error)
    except SQLAlchemyError as sql_error:
        logging.error(sql_error)
