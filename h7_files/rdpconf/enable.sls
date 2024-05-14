enable_rdp_registry:
  reg.present:
    - name: 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server'
    - vname: 'fDenyTSConnections'
    - vdata: 0
    - vtype: REG_DWORD

require_network_level_authentication:
  reg.present:
    - name: 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'
    - vname: 'UserAuthentication'
    - vdata: 1
    - vtype: REG_DWORD