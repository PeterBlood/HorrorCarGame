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
  ChildIds: 10854469840527586924
  ChildIds: 17728151593880324353
  ChildIds: 17557419567025016952
  ChildIds: 9655238875959072677
  ChildIds: 6667491519456510585
  ChildIds: 7173363649694205540
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
  Id: 7173363649694205540
  Name: "DeathAnimation"
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
  ParentId: 2192538175385576396
  UnregisteredParameters {
    Overrides {
      Name: "cs:Camera"
      ObjectReference {
        SelfId: 17557419567025016952
      }
    }
    Overrides {
      Name: "cs:UI Image"
      ObjectReference {
        SelfId: 151146965089960682
      }
    }
    Overrides {
      Name: "cs:MainCamera"
      ObjectReference {
        SelfId: 3567959178173361743
      }
    }
    Overrides {
      Name: "cs:Humanoid 1 Rig"
      ObjectReference {
        SelfId: 5700632349285647886
      }
    }
    Overrides {
      Name: "cs:DeathPos"
      ObjectReference {
        SelfId: 10642498824332749495
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
      Id: 1596412506573882044
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 6667491519456510585
  Name: "UI Container"
  Transform {
    Location {
      X: -320
      Y: 10
      Z: -2860
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
  ChildIds: 151146965089960682
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
  Control {
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    Canvas {
      ContentType {
        Value: "mc:ecanvascontenttype:dynamic"
      }
      Opacity: 1
      CanvasWorldSize {
        X: 1280
        Y: 1280
      }
      TwoSided: true
      TickWhenOffScreen: true
      RedrawTime: 30
      UseSafeZoneAdjustment: true
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 151146965089960682
  Name: "UI Image"
  Transform {
    Location {
      X: 320
      Y: -10
      Z: 2860
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6667491519456510585
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
  Control {
    Width: 200
    Height: 200
    RenderTransformPivot {
      Anchor {
        Value: "mc:euianchor:middlecenter"
      }
    }
    UseParentWidth: true
    UseParentHeight: true
    Image {
      Brush {
      }
      Color {
        R: 1
        G: 1
        B: 1
        A: 1
      }
      TeamSettings {
      }
      ShadowColor {
        A: 1
      }
      ShadowOffset {
      }
      ScreenshotIndex: 1
    }
    AnchorLayout {
      SelfAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
      TargetAnchor {
        Anchor {
          Value: "mc:euianchor:topleft"
        }
      }
    }
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9655238875959072677
  Name: "Area Light"
  Transform {
    Location {
      X: 269
      Z: -2708
    }
    Rotation {
      Pitch: -90
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2192538175385576396
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
  Light {
    Intensity: 1
    Color {
      R: 1
      G: 1
      B: 1
      A: 1
    }
    VolumetricIntensity: 5
    TeamSettings {
    }
    Light {
      Temperature: 6500
      LocalLight {
        AttenuationRadius: 1000
        AreaLight {
          BarnDoorAngle: 31.2735863
          BarnDoorLength: 20
          SourceWidth: 122.843216
          SourceHeight: 1
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
    ShadowBias: 0.4
    ShadowSlopeBias: 0.6
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
  Id: 17557419567025016952
  Name: "Camera"
  Transform {
    Location {
      X: 320
      Y: 10
      Z: -2860
    }
    Rotation {
      Yaw: 180
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 2192538175385576396
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
    Value: "mc:eindicatorvisibility:alwaysvisible"
  }
  Camera {
    PositionOffset {
    }
    RotationOffset {
    }
    FieldOfView: 90
    ViewWidth: 1200
    RotationMode {
      Value: "mc:erotationmode:default"
    }
    MinPitch: -89
    MaxPitch: 89
    AudioListenerOffset {
    }
    IsCameraCollisionEnabled: true
    EnablePictureInPicture: true
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
      Z: -3000
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
  ChildIds: 5700632349285647886
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
    Value: "mc:evisibilitysetting:forceoff"
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
    DisableCastShadows: true
    DisableCastShadowsIOS: true
    AnimatedMesh {
      AnimationPlaybackRateMultiplier: 1
      PlayOnStartAnimation {
        Animation: "unarmed_boo"
        StartPosition: 0.16
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
  Id: 10854469840527586924
  Name: "Cube - Inverted"
  Transform {
    Location {
      Z: -3302.21802
    }
    Rotation {
    }
    Scale {
      X: 29.6710854
      Y: 29.6710854
      Z: 29.6710854
    }
  }
  ParentId: 2192538175385576396
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
      Id: 10858225951265488017
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
