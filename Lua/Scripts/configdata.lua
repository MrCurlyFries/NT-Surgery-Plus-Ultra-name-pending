NTSPU.ConfigData = {
    -- Header for NT Surgery Plus Ultra configuration
    NTSP_header1 = {
        name = NTSPU.Name,
        type = "category"
    },

    -- Enable or disable surgical infections
    NTSP_enableSurgicalInfection = {
        name = "Surgical Infection",
        default = true,
        type = "bool",
        difficultyCharacteristics = {
            multiplier = 0.5
        }
    },

    -- Enable or disable surgery skill requirements
    NTSP_enableSurgerySkill = {
        name = "Surgery Skill",
        default = true,
        type = "bool"
    },

    -- Allow fractures to remove plaster casts upon receiving damage
    NT_beepboop = {
        name = "Fractures Remove Casts!",
        default = true,
        type = "bool",
        difficultyCharacteristics = {
            multiplier = 0.5
        },
        description = "When receiving damage that would cause a fracture, remove plaster casts on the limb."
    }
}

-- Add configuration options to NTConfig
NTConfig.AddConfigOptions(NTSPU)
