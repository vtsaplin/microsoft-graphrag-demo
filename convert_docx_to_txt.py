import os
import argparse
from docx import Document

def docx_to_txt(docx_path, txt_path):
    """Convert a .docx file to a .txt file."""
    doc = Document(docx_path)
    with open(txt_path, 'w', encoding='utf-8') as txt_file:
        for para in doc.paragraphs:
            txt_file.write(para.text + '\n')

def convert_docx_folder(source_folder, destination_folder):
    """Convert all .docx files in the source folder to .txt files in the destination folder."""
    if not os.path.exists(destination_folder):
        os.makedirs(destination_folder)

    for filename in os.listdir(source_folder):
        if filename.endswith('.docx'):
            docx_path = os.path.join(source_folder, filename)
            txt_filename = filename.replace('.docx', '.txt')
            txt_path = os.path.join(destination_folder, txt_filename)
            docx_to_txt(docx_path, txt_path)
            print(f"Converted '{filename}' to '{txt_filename}'")

if __name__ == "__main__":
    # Setup command-line argument parsing
    parser = argparse.ArgumentParser(description="Convert .docx files to .txt files.")
    parser.add_argument('source_folder', type=str, help='Path to the folder containing .docx files.')
    parser.add_argument('destination_folder', type=str, help='Path to the folder where .txt files will be saved.')

    args = parser.parse_args()

    # Run the conversion
    convert_docx_folder(args.source_folder, args.destination_folder)
