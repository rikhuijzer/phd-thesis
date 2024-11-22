// write code that reads "predicting.typ" and removes one line containing "predicting" and writes
// the rest to "predicting.typ"

use std::fs::File;
use std::io::Write;

fn main() {
    let lines = std::fs::read_to_string("predicting.typ")
        .expect("File not found")
        .split('\n')
        .map(String::from)
        .collect::<Vec<String>>();

    let mut new = vec![];
    for line in &lines {
        match line.trim() {
            "#include \"title-page.typ\"" => (),
            "#include \"chapters/acknowledgements.typ\"" => (),
            "#pagebreak() // For title page." => (),
            _ => new.push(line),
        }
    }
    assert_eq!(new.len(), lines.len() - 3, "Expected 3 lines to be removed");
    let mut writer = File::create("predicting.typ").expect("File not found");
    for line in new {
        writeln!(writer, "{}", line).expect("Could not write to file");
    }
}
