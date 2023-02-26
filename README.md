# asciidoctor-letter-DIN5008
DIN5008 related generation of letters via asciidoctor

## description

The generator is splited in two parts:
1. asciidoc **data-file** that sets the letter-layout
2. asciidoc **content-file** that defines the letter text and the attributes like addresses, date, etc.

To generate letter, compile the data-file via asciidoctor. 

To handle the files in there directories you can use the script-file
