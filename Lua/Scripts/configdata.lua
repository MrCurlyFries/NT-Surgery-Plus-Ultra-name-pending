NTSPU.ConfigData = {
    NTSP_header1 = {name=NTSPU.Name,type="category"},

    NTSP_enableSurgicalInfection =    {name="surgical infection",default=true,type="bool",          difficultyCharacteristics={multiplier=0.5}},
    NTSP_enableSurgerySkill =         {name="surgery skill",default=true,type="bool"},
}
NTConfig.AddConfigOptions(NTSPU)