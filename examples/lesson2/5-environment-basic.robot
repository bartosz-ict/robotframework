*** Settings ***
resource    5-environment-${env}.resource

*** Test cases ***
Environment Test
    Log    Show environment value: ${resource}
    Log    Show host info: ${dct_host}[address]