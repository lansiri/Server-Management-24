{% set update_day = salt['pillar.get']('update_day', 7) %}

win_updateschedule_disable_auto_update:
  reg.present:
    - name: 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
    - vname: 'NoAutoUpdate'
    - vdata: 0
    - vtype: REG_DWORD

win_updateschedule_auto_options:
  reg.present:
    - name: 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
    - vname: 'AUOptions'
    - vdata: 4
    - vtype: REG_DWORD

win_updateschedule_install_day:
  reg.present:
    - name: 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
    - vname: 'ScheduledInstallDay'
    - vdata: {{ update_day }}
    - vtype: REG_DWORD

win_updateschedule_install_time:
  reg.present:
    - name: 'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU'
    - vname: 'ScheduledInstallTime'
    - vdata: 3
    - vtype: REG_DWORD