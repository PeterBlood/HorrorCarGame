Assets {
  Id: 16333901029314279242
  Name: "Custom Fabric Burlap New 01"
  PlatformAssetType: 13
  SerializationVersion: 125
  CustomMaterialAsset {
    BaseMaterialId: 14675547239647570843
    ParameterOverrides {
      Overrides {
        Name: "roughness_multiplier"
        Float: 1
      }
      Overrides {
        Name: "desaturation_albedo"
        Float: 0
      }
      Overrides {
        Name: "b_invert_metallic"
        Bool: false
      }
      Overrides {
        Name: "color"
        Color {
          R: 0.321
          G: 0.128
          B: 0.128
          A: 1
        }
      }
    }
    Assets {
      Id: 14675547239647570843
      Name: "Fabric Burlap New 01"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "mi_fan_fabric_burlap_002_uv"
      }
    }
  }
}
