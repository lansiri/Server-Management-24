disable_rdp_registry:
  reg.present:
    - name: 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server'
    - vname: 'fDenyTSConnections'
    - vdata: 1
    - vtype: REG_DWORD