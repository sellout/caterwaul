### All available options for this file are listed in
### https://sellout.github.io/project-manager/options.xhtml
{...}: {
  project = {
    name = "caterwaul";
    summary = "Wailing into the primordial ooze of category theory";
  };

  ## formatting
  project.file.".dir-locals.el".source = ../emacs/.dir-locals.el;

  ## publishing
  services.github.settings.repository.topics = [];
}
