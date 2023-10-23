Assets {
  Id: 13437738320130035746
  Name: "WindshieldsSwitch"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 10856222541190136702
      Objects {
        Id: 10856222541190136702
        Name: "WindshieldsSwitch"
        Transform {
          Scale {
            X: 0.749096513
            Y: 0.749096513
            Z: 0.749096513
          }
        }
        ParentId: 2391263011315130328
        ChildIds: 4678361307379931604
        ChildIds: 12179641803333115893
        ChildIds: 11859103865752561295
        UnregisteredParameters {
          Overrides {
            Name: "cs:CameraID"
            Int: 1
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
            Bool: false
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
        Id: 4678361307379931604
        Name: "Urban Utensil Tong Right 01"
        Transform {
          Location {
            X: 37.9462891
            Y: 10.2068787
            Z: 37.7394409
          }
          Rotation {
            Pitch: 46.079113
            Yaw: -169.165955
            Roll: 86.9568863
          }
          Scale {
            X: 1
            Y: 1.07276654
            Z: 1
          }
        }
        ParentId: 10856222541190136702
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
            Id: 12117673785908690693
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
        Id: 12179641803333115893
        Name: "Cube - Rounded"
        Transform {
          Location {
            X: 39.9604187
            Y: 10.7486267
            Z: 39.7425842
          }
          Rotation {
            Pitch: 46.079113
            Yaw: -169.165955
            Roll: 86.9568863
          }
          Scale {
            X: 0.0586404316
            Y: 0.200538874
            Z: 0.0586405396
          }
        }
        ParentId: 10856222541190136702
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:id"
            AssetReference {
              Id: 132672053610873933
            }
          }
          Overrides {
            Name: "ma:Shared_BaseMaterial:color"
            Color {
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
            Id: 16217729595228146144
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
        Id: 11859103865752561295
        Name: "Trigger"
        Transform {
          Location {
            X: 34.1089821
            Y: 9.17474842
            Z: 33.9230499
          }
          Rotation {
            Pitch: 46.079113
            Yaw: -169.165955
            Roll: 86.9568863
          }
          Scale {
            X: 0.0647954
            Y: 0.390439868
            Z: 0.0692918897
          }
        }
        ParentId: 10856222541190136702
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
      Id: 12117673785908690693
      Name: "Urban Utensil Tong Right 01"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_prop_urb_tong_001_r_001_ref"
      }
    }
    Assets {
      Id: 16217729595228146144
      Name: "Cube - Rounded"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_rounded_002"
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
