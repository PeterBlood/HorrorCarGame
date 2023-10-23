Assets {
  Id: 18047151645560598229
  Name: "CutPos5"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 6266150380935677032
      Objects {
        Id: 6266150380935677032
        Name: "CutPos5"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 11117690483820726977
        ChildIds: 7823227790066486169
        ChildIds: 6544446349832155150
        UnregisteredParameters {
          Overrides {
            Name: "cs:CameraID"
            Int: 8
          }
          Overrides {
            Name: "cs:NeedItem"
            String: "WireCutters"
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
            Name: "cs:Geo"
            ObjectReference {
              SubObjectId: 7823227790066486169
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
          Value: "mc:evisibilitysetting:inheritfromparent"
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
        Id: 7823227790066486169
        Name: "CutPos5"
        Transform {
          Location {
          }
          Rotation {
            Pitch: 9.26664734
            Yaw: -67.4880295
            Roll: 52.7015343
          }
          Scale {
            X: 0.0760117471
            Y: 0.0652348846
            Z: 0.0870021433
          }
        }
        ParentId: 6266150380935677032
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
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
            Id: 3731547160228935874
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
        Id: 6544446349832155150
        Name: "Trigger"
        Transform {
          Location {
            X: -0.245941162
            Y: -2.12698364
            Z: 1.65953064
          }
          Rotation {
            Pitch: 9.73715782
            Yaw: 31.9067116
            Roll: 58.9519463
          }
          Scale {
            X: 0.0107838307
            Y: 0.0137352217
            Z: 0.0412351
          }
        }
        ParentId: 6266150380935677032
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
      Id: 3731547160228935874
      Name: "Ring - Quarter"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_quarter_torus_002"
      }
    }
    Assets {
      Id: 132672053610873933
      Name: "Plastic Matte"
      PlatformAssetType: 2
      PrimaryAsset {
        AssetType: "MaterialAssetRef"
        AssetId: "plastic_matte_001"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
}
