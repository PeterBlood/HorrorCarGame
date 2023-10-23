Assets {
  Id: 5084355385916528865
  Name: "CutPos3"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 989816681525147134
      Objects {
        Id: 989816681525147134
        Name: "CutPos3"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 14308853609796700187
        ChildIds: 6617979705655234180
        ChildIds: 891679206598294796
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
              SubObjectId: 6617979705655234180
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
        Id: 6617979705655234180
        Name: "CutPos3"
        Transform {
          Location {
          }
          Rotation {
            Pitch: -21.1871033
            Yaw: -116.244446
            Roll: 47.0413322
          }
          Scale {
            X: 0.0770820156
            Y: 0.0550927185
            Z: 0.0870021731
          }
        }
        ParentId: 989816681525147134
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
        Id: 891679206598294796
        Name: "Trigger"
        Transform {
          Location {
            X: -1.84341741
            Y: -0.968860388
            Z: 0.45330596
          }
          Rotation {
            Pitch: -133.677734
            Yaw: -22.4072876
            Roll: -49.8941956
          }
          Scale {
            X: 0.0107838186
            Y: 0.0137356315
            Z: 0.0365548059
          }
        }
        ParentId: 989816681525147134
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
