from pybtex.database import parse_file, BibliographyData
import re


def sort_bib_file(input_filepath: str, output_filepath: str) -> None:
    bib_data = parse_file(input_filepath)

    sorted_entries = dict(sorted(bib_data.entries.items(), key=lambda item: item[0]))

    # Create a new BibliographyData object with sorted entries
    sorted_bib_data = BibliographyData(entries=sorted_entries)

    # Write the sorted entries to a new file or overwrite the original
    with open(output_filepath, 'w') as output_file:
        sorted_bib_data.to_file(output_file, 'bibtex')


def adjust_bib_indentation(input_filepath: str, output_filepath: str) -> None:
    with open(input_filepath, 'r') as file:
        lines = file.readlines()

    adjusted_lines = []
    for line in lines:
        # Check if the line starts with whitespace followed by a letter,
        # which is typical for .bib field lines.
        if line.startswith((' ', '\t')) and any(c.isalpha() for c in line.strip()):
            adjusted_lines.append('  ' + line.lstrip())
        else:
            adjusted_lines.append(line)

    with open(output_filepath, 'w') as file:
        file.writelines(adjusted_lines)


def revert_extra_escapes(filepath: str) -> None:
    with open(filepath, 'r') as file:
        content = file.read()

    content = re.sub(r'\\+&', r'\&', content)
    content = re.sub(r'\\+_', r'_', content)

    with open(filepath, 'w') as file:
        file.write(content)


path = 'references.bib'
sort_bib_file(path, path)
adjust_bib_indentation(path, path)
revert_extra_escapes(path)
