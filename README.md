# SIINTEC LaTeX Template

This repository provides a LaTeX document class and template for formatting academic papers for **SIINTEC** (Simpósio Internacional de Inovação e Tecnologia / International Symposium on Innovative Technologies). 

The class (`siintec.cls`) is designed to meet the event's guidelines for paper submissions, ensuring correct typography, layout, and styling out of the box.

## Features

- **Standardized Layout:** Two-column A4 layout with precise margins as required by the symposium.
- **Typography:** Enforces Times New Roman font family with correct sizing for sections, titles, abstracts, and text body.
- **Title and Author Management:** Custom commands (`\siintectitle`, `\siintecauthor`, `\siintecaffil`) to easily format complex author lists and affiliations.
- **Abstract Environment:** Structured single-column abstract including keywords and abbreviations.
- **Header and Footer:** Custom header containing the conference logo and an informative footer.
- **Vancouver Referencing Style:** Configured for square bracket citations and standard Vancouver reference formatting.
- **Rich Examples:** The template `main.tex` illustrates how to format equations, tables, figures, TikZ graphics, and bibliography.

## Repository Contents

- `siintec.cls`: The core LaTeX class file that defines the document structure and styles.
- `main.tex`: A comprehensive example document showing how to use the class commands and environments.
- `refs.bib`: An example bibliography file using the Vancouver style.
- `siintec.png`: The conference header logo required by the class.
- Other sample images (`biochip.png`, `edfa-setup.png`) for demonstrating figure inclusion.

## Requirements

To compile the document, you will need a standard LaTeX distribution (such as TeX Live, MiKTeX, or MacTeX) that includes `pdflatex`. The class relies on several common LaTeX packages, which are normally included by default:

- `inputenc`, `fontenc`, `mathptmx` (for Times New Roman)
- `geometry`, `fancyhdr`, `titlesec` (for layout and styling)
- `graphicx`, `tikz`, `amsmath` (for graphics and math)
- `authblk`, `caption`, `natbib` (for metadata and referencing)

## Usage Instructions

1. **Clone the repository** (or download the files):
   ```bash
   git clone https://github.com/CCTQ-CIMATEC/siintec-template
   cd siintec-template
   ```
   or 
   ```bash
   git clone https://github.com/nelsonafn/siintec-template
   cd siintec-template
   ```

2. **Edit the document:**
   Open `main.tex` and replace the placeholder text with your manuscript content. Update your metadata using the provided custom commands:
   - `\siintectitle{...}`
   - `\siintecauthor[...]{...}`
   - `\siintecaffil[...]{...}`
   - `\siintecabstract{Abstract}{Keywords}{Abbreviations}`

3. **Add your references:**
   Place your BibTeX citations in `refs.bib`.

4. **Compile the document:**
   Use `pdflatex` and `bibtex` to generate the PDF. For example:
   ```bash
   pdflatex main.tex
   bibtex main.aux
   pdflatex main.tex
   pdflatex main.tex
   ```
   Alternatively, you can use `latexmk`:
   ```bash
   latexmk -pdf main.tex
   ```

## Author

**Nelson Alves Ferreira Neto**  


---
*Note: This template is provided to help authors easily format their submissions and complies with the SIINTEC paper formatting requirements.*
