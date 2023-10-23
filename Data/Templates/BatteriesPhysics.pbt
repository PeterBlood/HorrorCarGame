Assets {
  Id: 16055980741972558215
  Name: "BatteriesPhysics"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8119030787849989361
      Objects {
        Id: 8119030787849989361
        Name: "BatteriesPhysics"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 599147544010460783
        ChildIds: 15755288114524397688
        ChildIds: 15210072435532886225
        UnregisteredParameters {
          Overrides {
            Name: "cs:LootAreaID"
            Int: 0
          }
          Overrides {
            Name: "cs:Object"
            AssetReference {
              Id: 6529401126735704288
            }
          }
          Overrides {
            Name: "cs:LootAreaID:isrep"
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
        Id: 599147544010460783
        Name: "Geo"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 0.7
            Y: 0.7
            Z: 0.7
          }
        }
        ParentId: 8119030787849989361
        ChildIds: 18190740471160463103
        ChildIds: 17575230616987226426
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceoff"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:inheritfromparent"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
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
        Id: 18190740471160463103
        Name: "Battery"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 599147544010460783
        TemplateInstance {
          ParameterOverrideMap {
            key: 12476124305193606256
            value {
              Overrides {
                Name: "Name"
                String: "Battery"
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 0.0675998926
                  Y: 0.0675998926
                  Z: 0.0675998926
                }
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -22.4046669
                  Y: 3.00000048
                  Z: 4.31787252
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Pitch: 126.724991
                  Yaw: -90
                  Roll: 90
                }
              }
            }
          }
          TemplateAsset {
            Id: 17992885385454663616
          }
        }
      }
      Objects {
        Id: 17575230616987226426
        Name: "Battery"
        Transform {
          Location {
            X: 582.003296
            Y: 178.210251
            Z: 53.4348755
          }
          Rotation {
            Yaw: -168.806244
          }
          Scale {
            X: 0.0546015091
            Y: 0.0546015091
            Z: 0.0546015091
          }
        }
        ParentId: 599147544010460783
        TemplateInstance {
          ParameterOverrideMap {
            key: 12476124305193606256
            value {
              Overrides {
                Name: "Name"
                String: "Battery"
              }
              Overrides {
                Name: "Scale"
                Vector {
                  X: 0.0675998777
                  Y: 0.0675998777
                  Z: 0.0675998777
                }
              }
              Overrides {
                Name: "Position"
                Vector {
                  X: -22.4046669
                  Y: -3.00000024
                  Z: 4.31787252
                }
              }
              Overrides {
                Name: "Rotation"
                Rotator {
                  Pitch: -26.4511414
                  Yaw: -90
                  Roll: 90
                }
              }
            }
          }
          TemplateAsset {
            Id: 17992885385454663616
          }
        }
      }
      Objects {
        Id: 15755288114524397688
        Name: "Capsule"
        Transform {
          Location {
            X: -3.96671295
            Y: 0.0346193314
            Z: 2.93742
          }
          Rotation {
          }
          Scale {
            X: 0.192660019
            Y: 0.0844926685
            Z: 0.0421698764
          }
        }
        ParentId: 8119030787849989361
        UnregisteredParameters {
          Overrides {
            Name: "ma:Shared_BaseMaterial:smart"
            Bool: false
          }
        }
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
        }
        Visible_v2 {
          Value: "mc:evisibilitysetting:forceoff"
        }
        CameraCollidable {
          Value: "mc:ecollisionsetting:forceoff"
        }
        EditorIndicatorVisibility {
          Value: "mc:eindicatorvisibility:visiblewhenselected"
        }
        CoreMesh {
          MeshAsset {
            Id: 12095835209017042614
          }
          Teams {
            IsTeamCollisionEnabled: true
            IsEnemyCollisionEnabled: true
          }
          StaticMesh {
            Physics {
              IsEnabled: true
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
        Id: 15210072435532886225
        Name: "PhysicsObjectControl"
        Transform {
          Location {
          }
          Rotation {
          }
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 8119030787849989361
        UnregisteredParameters {
          Overrides {
            Name: "cs:LootAreas"
            ObjectReference {
              SelfId: 11183302422746069172
            }
          }
          Overrides {
            Name: "cs:Geo"
            ObjectReference {
              SubObjectId: 599147544010460783
            }
          }
          Overrides {
            Name: "cs:Physics"
            ObjectReference {
              SubObjectId: 15755288114524397688
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
        Script {
          ScriptAsset {
            Id: 9187321357797780269
          }
        }
        NetworkRelevanceDistance {
          Value: "mc:eproxyrelevance:critical"
        }
        IsReplicationEnabledByDefault: true
      }
    }
    Assets {
      Id: 12095835209017042614
      Name: "Cube"
      PlatformAssetType: 1
      PrimaryAsset {
        AssetType: "StaticMeshAssetRef"
        AssetId: "sm_cube_002"
      }
    }
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
  VirtualFolderPath: "Items"
}
