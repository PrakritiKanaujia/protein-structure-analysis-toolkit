# 🧬 Protein Structure Analysis Toolkit
### Automating Protein Structure Retrieval and Sequence Analysis using Linux Shell Scripts

<p align="center">
  <img src="https://img.shields.io/badge/Linux-Bash-black?style=for-the-badge&logo=gnu-bash">
  <img src="https://img.shields.io/badge/Bioinformatics-Protein%20Analysis-success?style=for-the-badge">
  <img src="https://img.shields.io/badge/PDB-Structure%20Analysis-blue?style=for-the-badge">
</p>

---

## 📖 Overview

The **Protein Structure Analysis Toolkit** is a Linux shell-based bioinformatics application that automates common tasks involved in protein sequence and structure analysis. It integrates several Bash scripts into a simple command-line workflow for retrieving protein structures, extracting sequence information, analyzing amino acid composition, and visualizing protein data.

This project demonstrates how shell scripting can be used to automate biological data retrieval and analysis by combining command-line utilities with resources such as the **Protein Data Bank (PDB)**.

---

## 🎯 Objectives

- Automate retrieval of protein structures from the Protein Data Bank (PDB)
- Process protein sequences in FASTA format
- Extract protein information from PDB files
- Calculate amino acid composition
- Visualize protein structures
- Demonstrate modular Bash scripting for bioinformatics workflows

---

## ✨ Features

- 📥 Download protein structures using PDB IDs
- 📄 View protein structure files
- 🔍 Extract protein information
- 🧪 Calculate amino acid composition
- 🧬 Process FASTA sequences
- 🖼 Display protein structure images
- ⚙️ Menu-driven command-line interface

## Prerequisites

Before running the toolkit, ensure the following software is installed:

- Linux or macOS
- Bash 4.0+
- `wget`
- `curl`
- `grep`
- `awk`
- `sed`

Internet connectivity is required when downloading protein structures from the Protein Data Bank (PDB).

---

## 📂 Repository Structure

```text
protein-structure-analysis-toolkit/
│
├── mainprogram.sh        # Main menu-driven interface
├── fetchpdb.sh           # Downloads PDB files
├── viewpdb.sh            # Displays PDB file contents
├── pdbinfo.sh            # Extracts protein information
├── pdbimg.sh             # Displays protein structure images
├── aacomp.sh             # Calculates amino acid composition
│
├── pdb/
│   ├── *.pdb             # Sample PDB structure files
│
├── fasta/
│   ├── *.fasta           # Sample FASTA sequences
│
├── images/
│   ├── *.jpeg            # Protein structure images
│
├── README.md
├── LICENSE
└── .gitignore
```

---

## ⚙ Workflow

```text
             User Input
                  │
                  ▼
         Main Program Menu
                  │
        ┌─────────┼─────────┐
        │         │         │
        ▼         ▼         ▼
   Fetch PDB   View PDB   FASTA Input
        │         │         │
        ▼         ▼         ▼
   Protein    Protein    Amino Acid
 Information Structure Composition
        │
        ▼
 Protein Visualization
```

---

## 📜 Script Descriptions

### `mainprogram.sh`

Acts as the central controller for the toolkit.

Responsibilities:

- Displays the main menu
- Accepts user selections
- Executes the appropriate analysis module
- Coordinates the workflow

---

### `fetchpdb.sh`

Downloads protein structure files from the **Protein Data Bank (PDB)** using a supplied PDB identifier.

Example:

```
PDB ID: 1CRN
```

Downloads

```
1CRN.pdb
```

---

### `viewpdb.sh`

Displays the contents of downloaded PDB files for quick inspection.

Useful for:

- Viewing protein coordinates
- Checking metadata
- Exploring structural records

---

### `pdbinfo.sh`

Extracts important information from PDB files such as:

- Protein name
- Organism
- Chain information
- Experimental method
- Resolution (if available)

---

### `aacomp.sh`

Calculates the amino acid composition of protein sequences.

Typical output includes:

- Amino acid counts
- Frequency distribution
- Composition statistics

---

### `pdbimg.sh`

Displays protein structure images associated with downloaded PDB files.

---

## 🛠 Technologies Used

- Bash Shell
- Linux
- Unix Command-Line Utilities
- Protein Data Bank (PDB)
- FASTA Format

---

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/PrakritiKanaujia/protein-structure-analysis-toolkit.git
```

### Navigate to the project

```bash
cd protein-structure-analysis-toolkit
```

### Grant execution permissions

```bash
chmod +x *.sh
```

### Run the application

```bash
./mainprogram.sh
```

---

## 💻 Example Usage

### Download a protein structure

```bash
./fetchpdb.sh
```

Example Input

```
1CRN
```

Expected Output

```
Downloading PDB structure...
Download Complete.
```

---

### View PDB Information

```bash
./pdbinfo.sh
```

Example Output

```
Protein Name
Organism
Resolution
Experimental Method
Chain IDs
```

---

### Calculate Amino Acid Composition

```bash
./aacomp.sh
```

Example Output

```
Alanine (A): 23
Arginine (R): 12
Glycine (G): 18
...
```

---

## 📊 Expected Outputs

Depending on the selected module, the toolkit generates:

- Downloaded PDB files
- Protein information summaries
- Amino acid composition reports
- FASTA sequence processing results
- Protein structure visualizations

---

## 🎓 Applications

This toolkit can be used for:

- Protein structure exploration
- Introductory structural bioinformatics
- Molecular biology education
- Bioinformatics laboratory exercises
- Linux shell scripting practice
- Automation of repetitive sequence analysis tasks

---

## 💡 Skills Demonstrated

This project demonstrates practical experience in:

- Linux Shell Scripting
- Bash Programming
- Bioinformatics Workflow Design
- Protein Structure Analysis
- PDB File Processing
- FASTA Sequence Handling
- Automation of Scientific Workflows
- Command-line Tool Development

---

## 🔮 Future Improvements

Potential enhancements include:

- Support for batch PDB downloads
- Automatic FASTA retrieval
- Secondary structure analysis
- Protein sequence alignment
- Integration with UniProt
- Interactive terminal interface
- Download progress indicators
- Error handling and input validation

---

## 📚 References

- Protein Data Bank (PDB)
- RCSB Protein Data Bank
- FASTA File Format Specification

---

## 📜 License

This project is released under the MIT License.

It was developed as an educational project to demonstrate Linux shell scripting and bioinformatics workflow automation.
