disable_sleep_and_hibernation:
  cmd.run:
    - names:
      - powercfg /change standby-timeout-ac 0
      - powercfg /change standby-timeout-dc 0
      - powercfg /change hibernate-timeout-ac 0
      - powercfg /change hibernate-timeout-dc 0
    - shell: powershell