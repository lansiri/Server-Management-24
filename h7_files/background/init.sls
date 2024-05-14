copy_background_image:
  file.managed:
    - name: 'C:/temp/ARBG.png'
    - source: salt://background/ARBG.png
    - makedirs: True

set_desktop_background:
  cmd.run:
    - name: 'reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d C:\\temp\\ARBG.png /f'
    - require:
      - file: copy_background_image

refresh_desktop:
  cmd.run:
    - name: 'RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True'
    - require:
      - cmd: set_desktop_background