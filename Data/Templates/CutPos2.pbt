Assets {
  Id: 17806279653753219300
  Name: "CutPos2"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10243177980170601096
      Objects {
        Id: 10243177980170601096
        Name: "CutPos2"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 6586428502468790027
        ChildIds: 4851299357787232461
        ChildIds: 4419076847704629684
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
              SubObjectId: 4851299357787232461
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
        Id: 4851299357787232461
        Name: "CutPos2"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -37.1419716
            Yaw: -81.236084
            Roll: 27.1426277
          }
          Scale {
            X: 0.0870023072
            Y: 0.0870023072
            Z: 0.0870023072
          }
        }
        ParentId: 10243177980170601096
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
        Id: 4419076847704629684
        Name: "Trigger"
        Transform {
          Location {
            X: -1.52001905
            Y: -2.77860808
            Z: -0.545870543
          }
          Rotation {
            Pitch: 14.7697783
            Yaw: 56.2991409
            Roll: 44.9381828
          }
          Scale {
            X: 0.0107838307
            Y: 0.0137352217
            Z: 0.0412351
          }
        }
        ParentId: 10243177980170601096
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
