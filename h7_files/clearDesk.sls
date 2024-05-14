clear_desktop:
  file.absent:
    - name: C:\Users\Administrator\Desktop
    - recurse: True

recreate_desktop:
  file.directory:
    - name: C:\Users\Administrator\Desktop
    - makedirs: True
    - require:
      - file: clear_desktop
