import os


def read_content(file_path) -> str:
    with open(file_path, "r") as file:
        content = file.read()
    return content


def write_content(file_path, content) -> None:
    with open(file_path, "w") as file:
        file.write(content)


#
files_root = "dispositivi/capitoli_dispositivi/"

capitoli = os.listdir(files_root)

for capitolo in capitoli:
    input_file_path = files_root + capitolo
    titolo = (
        read_content(input_file_path)
        .split(sep="=", maxsplit=1)[1]
        .split("\n", maxsplit=1)[0]
        .strip()
    )
    imports = read_content(files_root + capitolo).split("#import")
    imports.insert(0, imports[-1].split("\n", maxsplit=1)[0])
    imports.pop(-1)

    imports = [
        i.strip() for i in imports if "=" not in i and len(i) is not 0 and i is not "\n"
    ]

    imports_string = ""
    for i in imports:
        imports_string += "#import " + i + "\n"
    #print(imports_string)

    contenuto = (
        read_content(files_root + capitolo)
        .split("#import")[-1]
        .split("\n", maxsplit=1)[1]
        .replace("= " + titolo, "", 1)
        .replace("==", "=")
        .replace("===", "==")
        .replace("====", "===")
        .replace("=====", "====")
    )
    typ_file_content = f"""#import "/utils/latest_style.typ": apply_my_style
{imports_string}

#apply_my_style(date:(2024,9,13), title:"{titolo}")[
{contenuto}
]
"""
    output_file_path = (
        "~/Scrivania/WorkingArea/AppuntiPDF/dispositivi/"
        + f"single_cap_gen/{titolo.replace(' ','_')}.typ"
    )
    write_content(output_file_path,typ_file_content)
    print("###############\n" + typ_file_content)
