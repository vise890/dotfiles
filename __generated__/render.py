from string import Template
import os
import shutil


TEMPLATE_PATH = './templates/'
OUT_PATH = './out/'


def substitute_in(template_str):
    import variables
    t = Template(template_str)
    return t.substitute(variables.variables)


def render_to(path, template_str):
    with open(path, 'w') as dest:
        contents = substitute_in(template_str)
        dest.write(contents)


def render_all():
    shutil.rmtree(OUT_PATH)
    shutil.copytree(TEMPLATE_PATH, OUT_PATH)

    for (dirpath, _, filenames) in os.walk(OUT_PATH):

        for fn in filenames:
            fp = os.path.join(dirpath, fn)

            with open(fp, "r") as f:
                contents = f.read()

            render_to(fp, contents)


if __name__ == "__main__":
    render_all()
