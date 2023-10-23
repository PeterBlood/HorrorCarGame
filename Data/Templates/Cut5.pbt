Assets {
  Id: 13142069774788361413
  Name: "Cut5"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 7467008432333366021
      Objects {
        Id: 7467008432333366021
        Name: "Cut5"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11117690483820726977
        ChildIds: 11005417377818490681
        ChildIds: 1633749149400018333
        ChildIds: 2802653725941908456
        UnregisteredParameters {
          Overrides {
            Name: "cs:CameraID"
            Int: 8
          }
          Overrides {
            Name: "cs:NeedItem"
            String: ""
          }
          Overrides {
            Name: "cs:HoldInteraction"
            Bool: false
          }
          Overrides {
            Name: "cs:Blocked"
            Bool: true
          }
          Overrides {
            Name: "cs:PosA"
            ObjectReference {
              SubObjectId: 1633749149400018333
            }
          }
          Overrides {
            Name: "cs:Blocked:isrep"
            Bool: true
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Folder {
          IsGroup: true
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 11005417377818490681
        Name: "Cylinder"
        Transform {
          Location {
            X: 5.3835144
            Y: -12.4008484
            Z: 0.978424072
          }
          Rotation {
            Pitch: -5.82251
            Yaw: 26.4578476
            Roll: -7.57702637
          }
          Scale {
            X: 0.00595359365
            Y: 0.00595358759
            Z: 0.0106355529
          }
        }
        ParentId: 7467008432333366021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14023212398559948573
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.65882355
              G: 0.0901960805
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13949441344821433690
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 1633749149400018333
        Name: "PosA"
        Transform {
          Location {
            X: 2.415802
            Y: -10.0487061
            Z: 1.71794128
          }
          Rotation {
            Pitch: -5.91418457
            Yaw: 11.3566113
            Roll: -104.480896
          }
          Scale {
            X: 0.00595359365
            Y: 0.00595358759
            Z: 0.0106355529
          }
        }
        ParentId: 7467008432333366021
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 14023212398559948573
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
              R: 0.65882355
              G: 0.0901960805
              A: 1
            }
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 13949441344821433690
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              Mass: 100
              LinearDamping: 0.01
            }
            BoundsScale: 1
          }
        }
        Relevance {
          Value: "mc:edistancerelevance:critical"
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
      Objects {
        Id: 2802653725941908456
        Name: "Trigger"
        Transform {
          Location {
            X: 2.415802
            Y: -10.0487061
            Z: 1.71794128
          }
          Rotation {
            Yaw: 12.0131474
            Roll: -7.42858887
          }
          Scale {
            X: 0.0107838307
            Y: 0.0137352217
            Z: -0.00830744
          }
        }
        ParentId: 7467008432333366021
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:inheritfromparent"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        Trigger {
          TeamSettings {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          TriggerShape_v2 {
            Value: "mc:etriggershape:box"
          }
          InteractionTemplate {
            Id: 841534158063459245
          }
          BreadcrumbTemplate {
            Id: 841534158063459245
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 13949441344821433690
      Name: "Cylinder"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cylinder_002"
      }
    }
    Assets {
      Id: 14023212398559948573
      Name: "Metal Chrome"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "chrome_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
}
