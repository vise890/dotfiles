from string import Template
import os

TEMPLATE_PATH = './templates/'

def makedirs(path):
  try:
    os.makedirs(path)
  except FileExistsError:
    pass


def substitute_in(template_str):
  import variables
  t = Template(template_str)
  return t.substitute(variables.variables)


def render_to(path, template_str):
  with open(path, 'w') as dest:
    contents = substitute_in(template_str)
    dest.write(contents)


def get_package_template_paths(pkg_name):
  pkg_path = os.path.join(TEMPLATE_PATH,pkg_name)
  return [os.path.join(pkg_path,tn) for tn in os.listdir(pkg_path)]


def generate_for(pkg_name):
  template_file_paths = get_package_template_paths(pkg_name)

  pkg_out_path = os.path.join('./out/',pkg_name)
  makedirs(pkg_out_path)

  for tp in template_file_paths:
    # TODO: handle nested dirs

    with open(tp) as tf:
      template_name = os.path.basename(tp)
      out_path = os.path.join(pkg_out_path,template_name)
      render_to(out_path, tf.read())


if __name__ == "__main__":
  generate_for("git")

