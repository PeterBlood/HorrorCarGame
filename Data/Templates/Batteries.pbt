Assets {
  Id: 6529401126735704288
  Name: "Batteries"
  PlatformAssetType: 5
  TemplateAsset {
    ObjectBlock {
      RootId: 8916367548136042921
      Objects {
        Id: 8916367548136042921
        Name: "Batteries"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 4781671109827199097
        ChildIds: 15722122603652486517
        ChildIds: 8937206508253183586
        UnregisteredParameters {
          Overrides {
            Name: "cs:DefPos"
            Vector {
            }
          }
          Overrides {
            Name: "cs:DefRot"
            Rotator {
            }
          }
          Overrides {
            Name: "cs:CameraID"
            Int: 0
          }
          Overrides {
            Name: "cs:LookPos"
            Vector {
              X: 35
            }
          }
          Overrides {
            Name: "cs:LookRot"
            Vector {
              Y: 90
            }
          }
          Overrides {
            Name: "cs:ChangeLooks"
            Bool: false
          }
          Overrides {
            Name: "cs:LookObject"
            ObjectReference {
            }
          }
          Overrides {
            Name: "cs:DefPos:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:DefRot:isrep"
            Bool: true
          }
          Overrides {
            Name: "cs:CameraID:isrep"
            Bool: true
          }
        }
        WantsNetworking: true
        Collidable_v2 {
          Value: "mc:ecollisionsetting:forceon"
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
        Id: 15722122603652486517
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
        ParentId: 8916367548136042921
        ChildIds: 7612393896118021089
        ChildIds: 3027533424155713707
        WantsNetworking: true
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
        Id: 7612393896118021089
        Name: "Battery"
        Transform {
          Scale {
            X: 1
            Y: 1
            Z: 1
          }
        }
        ParentId: 15722122603652486517
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
        Id: 3027533424155713707
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
        ParentId: 15722122603652486517
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
        Id: 8937206508253183586
        Name: "Trigger"
        Transform {
          Location {
            X: -3.82706451
            Y: -0.0646133423
            Z: 3.01129723
          }
          Rotation {
          }
          Scale {
            X: 0.189893842
            Y: 0.0851723626
            Z: 0.0434938148
          }
        }
        ParentId: 8916367548136042921
        WantsNetworking: true
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
    PrimaryAssetId {
      AssetType: "None"
      AssetId: "None"
    }
  }
  SerializationVersion: 125
  VirtualFolderPath: "Items"
}
