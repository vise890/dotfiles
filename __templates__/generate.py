from string import Template
import os

def substitute_in(template_str):
  import variables
  t = Template(template_str)
  return t.substitute(variables.variables)


def get_template_paths(pkg_name):
  pkg_path = './'+pkg_name
  return ['./'+pkg_name+'/'+tn for tn in os.listdir(pkg_path)]


def makedirs(path):
  try:
    os.makedirs(path)
  except FileExistsError:
    pass


def render_to(path, template_str):
  with open(path, 'w') as dest:
    contents = substitute_in(template_str)
    dest.write(contents)


def generate_for(pkg_name):
  template_file_paths = get_template_paths(pkg_name)

  for tfp in template_file_paths:

    with open(tfp) as tf:

      makedirs('../'+pkg_name)

      render_to('../'+tfp, tf.read())


if __name__ == "__main__":
  generate_for("git")

