Name: "VRabbit"
RootId: 7345491780355375106
Objects {
  Id: 2192538175385576396
  Name: "ClientContext"
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
  ParentId: 7345491780355375106
  ChildIds: 12395579952365465172
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
  NetworkContext {
    IsAllowedForPC: true
    IsAllowedForMobile: true
    IsAllowedForLowMemoryMobile: true
    PCMinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    PCMaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
    MobileMinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MobileMaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 12395579952365465172
  Name: "Killer"
  Transform {
    Location {
      X: -495.835358
      Y: 552.186
      Z: -281.482697
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2192538175385576396
  ChildIds: 962661051280796740
  ChildIds: 17728151593880324353
  ChildIds: 11616125766519140402
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
  Id: 11616125766519140402
  Name: "KillerControl"
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
  ParentId: 12395579952365465172
  UnregisteredParameters {
    Overrides {
      Name: "cs:Killer"
      ObjectReference {
        SelfId: 12395579952365465172
      }
    }
    Overrides {
      Name: "cs:Door1"
      ObjectReference {
        SelfId: 6462591423926839554
      }
    }
    Overrides {
      Name: "cs:Door2"
      ObjectReference {
        SelfId: 8140621020259267198
      }
    }
    Overrides {
      Name: "cs:Door3"
      ObjectReference {
        SelfId: 4747163113793446496
      }
    }
    Overrides {
      Name: "cs:Door4"
      ObjectReference {
        SelfId: 12345613329173169625
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
      Id: 7790934060285120203
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 17728151593880324353
  Name: "Death"
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
  ParentId: 12395579952365465172
  ChildIds: 5700632349285647886
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
  Id: 5700632349285647886
  Name: "Humanoid 1 Rig"
  Transform {
    Location {
      X: 57.4503174
      Y: -10.7988892
      Z: 18.0297241
    }
    Rotation {
    }
    Scale {
      X: 2
      Y: 2
      Z: 2
    }
  }
  ParentId: 17728151593880324353
  UnregisteredParameters {
    Overrides {
      Name: "ma:0:Shared_Detail1:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:1:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail1:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail2:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail3:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail4:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:2:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:2:Shared_Detail1:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:2:Shared_Detail2:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:3:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:3:Shared_Detail1:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:3:Shared_Detail2:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:3:Shared_Detail3:id"
      AssetReference {
        Id: 11137163986213340879
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
      Id: 12821246537959377672
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        Animation: "unarmed_boo"
        StartPosition: 0.14
        PlaybackRate: 0.1
        ShouldLoop: true
      }
      SkinnedMeshes {
        Id: 7336138383891168311
      }
      SkinnedMeshes {
        Id: 3351776925807297274
      }
      SkinnedMeshes {
        Id: 16995563670198642379
      }
      SkinnedMeshes {
        Id: 7562272315664860778
      }
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
  Id: 962661051280796740
  Name: "Geo"
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
  ParentId: 12395579952365465172
  ChildIds: 8108189127685720475
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
  Id: 8108189127685720475
  Name: "Humanoid 1 Rig"
  Transform {
    Location {
      Z: 100
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 962661051280796740
  UnregisteredParameters {
    Overrides {
      Name: "ma:1:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail1:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail2:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail3:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:1:Shared_Detail4:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:2:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:2:Shared_Detail1:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:2:Shared_Detail2:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:3:Shared_BaseMaterial:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:3:Shared_Detail1:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:3:Shared_Detail2:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:3:Shared_Detail3:id"
      AssetReference {
        Id: 11137163986213340879
      }
    }
    Overrides {
      Name: "ma:0:Shared_Detail2:color"
      Color {
        R: 1
        A: 1
      }
    }
    Overrides {
      Name: "ma:0:Shared_Detail1:color"
      Color {
        R: 0.026
        G: 0.026
        B: 0.026
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
      Id: 12821246537959377672
    }
    Teams {
      IsTeamCollisionEnabled: true
      IsEnemyCollisionEnabled: true
    }
    AnimatedMesh {
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
      }
      SkinnedMeshes {
        Id: 7336138383891168311
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
      SkinnedMeshes {
        Id: 841534158063459245
      }
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
