Name: "Cinematic Shot Component"
RootId: 6820726947591553935
Objects {
  Id: 7048619468660248952
  Name: "Cinematic Shot"
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
  ParentId: 6820726947591553935
  ChildIds: 3096486599549654778
  UnregisteredParameters {
    Overrides {
      Name: "cs:CameraStart"
      ObjectReference {
        SelfId: 9672584007714138259
      }
    }
    Overrides {
      Name: "cs:CameraEnd"
      ObjectReference {
        SelfId: 17207772692946561595
      }
    }
    Overrides {
      Name: "cs:PlayOnAction"
      String: "Play Shot"
    }
    Overrides {
      Name: "cs:SequenceNumber"
      Int: 2
    }
    Overrides {
      Name: "cs:Duration"
      Float: 10
    }
    Overrides {
      Name: "cs:HoldShotDuration"
      Float: 5
    }
    Overrides {
      Name: "cs:PlayOnEvent"
      String: "Overlap"
    }
    Overrides {
      Name: "cs:LookAtPlayer"
      Bool: false
    }
    Overrides {
      Name: "cs:LookAtTarget"
      Bool: true
    }
    Overrides {
      Name: "cs:Target"
      ObjectReference {
        SelfId: 7555768036370580286
      }
    }
    Overrides {
      Name: "cs:LinearPath"
      Bool: true
    }
    Overrides {
      Name: "cs:OrbitLongPath"
      Bool: false
    }
    Overrides {
      Name: "cs:OrbitShortPath"
      Bool: false
    }
    Overrides {
      Name: "cs:UseEaseFunction"
      Bool: false
    }
    Overrides {
      Name: "cs:EaseStrength"
      Float: 1.8
    }
    Overrides {
      Name: "cs:SequenceNumber:tooltip"
      String: "If multiple shots are bound to the same key or event, the SequenceNumber defines their order."
    }
    Overrides {
      Name: "cs:PlayOnEvent:tooltip"
      String: "If set, this shot will play when a networked event is detected with matching name. See Events.BroadcastToPlayer() in the API for more info."
    }
    Overrides {
      Name: "cs:PlayOnAction:tooltip"
      String: "If set, this shot will play when the specified action binding is pressed. Default is \'M\' key."
    }
    Overrides {
      Name: "cs:LinearPath:tooltip"
      String: "Moves the camera in a linear trajectory."
    }
    Overrides {
      Name: "cs:Duration:tooltip"
      String: "The duration of the shot, in seconds, as the camera goes from Start to End."
    }
    Overrides {
      Name: "cs:Target:tooltip"
      String: "The target object for the camera to look at. This can by set to a static position or placed under the hierarchy of a dynamic object."
    }
    Overrides {
      Name: "cs:LookAtTarget:tooltip"
      String: "If true, the camera will continuously look at the Target object. The Target can be set to another object in the game."
    }
    Overrides {
      Name: "cs:CameraStart:tooltip"
      String: "Reference to the starting camera object."
    }
    Overrides {
      Name: "cs:CameraEnd:tooltip"
      String: "Reference to the ending camera object."
    }
    Overrides {
      Name: "cs:LookAtPlayer:tooltip"
      String: "If true, the camera will continuously look at the local player during the entire shot. Customize the Start camera\'s offset to look at a different point on the player."
    }
    Overrides {
      Name: "cs:OrbitShortPath:tooltip"
      String: "Moves the camera in a spherical path around the target. If no target/player is chosen then the root of the template is used as the center."
    }
    Overrides {
      Name: "cs:OrbitLongPath:tooltip"
      String: "Orbits the camera around the target using the long arc. For a full 360 shot, use this option with both Start and End cameras at the same position."
    }
    Overrides {
      Name: "cs:UseEaseFunction:tooltip"
      String: "If true, time is non-linear, according to the following easing coeficients."
    }
    Overrides {
      Name: "cs:EaseStrength:tooltip"
      String: "How much to compress time in the beginning and end of the shot."
    }
    Overrides {
      Name: "cs:LookAtPlayer:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:LookAtPlayer:subcategory"
      String: "LookOptions"
    }
    Overrides {
      Name: "cs:LookAtTarget:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:LookAtTarget:subcategory"
      String: "LookOptions"
    }
    Overrides {
      Name: "cs:Target:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:Target:subcategory"
      String: "LookOptions"
    }
    Overrides {
      Name: "cs:PlayOnAction:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:PlayOnAction:subcategory"
      String: "PlaybackOptions"
    }
    Overrides {
      Name: "cs:PlayOnEvent:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:PlayOnEvent:subcategory"
      String: "PlaybackOptions"
    }
    Overrides {
      Name: "cs:SequenceNumber:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:SequenceNumber:subcategory"
      String: "PlaybackOptions"
    }
    Overrides {
      Name: "cs:Duration:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:Duration:subcategory"
      String: "PlaybackOptions"
    }
    Overrides {
      Name: "cs:LinearPath:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:LinearPath:subcategory"
      String: "PathOptions"
    }
    Overrides {
      Name: "cs:OrbitShortPath:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:OrbitShortPath:subcategory"
      String: "PathOptions"
    }
    Overrides {
      Name: "cs:OrbitLongPath:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:OrbitLongPath:subcategory"
      String: "PathOptions"
    }
    Overrides {
      Name: "cs:UseEaseFunction:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:UseEaseFunction:subcategory"
      String: "EasingOptions"
    }
    Overrides {
      Name: "cs:EaseStrength:category"
      String: "Custom"
    }
    Overrides {
      Name: "cs:EaseStrength:subcategory"
      String: "EasingOptions"
    }
    Overrides {
      Name: "cs:HoldShotDuration:tooltip"
      String: "The amount of time to hold the shot before cutting away."
    }
    Overrides {
      Name: "cs:HoldShotDuration:subcategory"
      String: "PlaybackOptions"
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
  Folder {
    IsGroup: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 3096486599549654778
  Name: "Client"
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
  ParentId: 7048619468660248952
  ChildIds: 1019400150421742406
  ChildIds: 9672584007714138259
  ChildIds: 17207772692946561595
  UnregisteredParameters {
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
  NetworkContext {
    MinDetailLevel {
      Value: "mc:edetaillevel:low"
    }
    MaxDetailLevel {
      Value: "mc:edetaillevel:ultra"
    }
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
  Id: 17207772692946561595
  Name: "Camera End"
  Transform {
    Location {
      X: 830.808472
      Y: 8152.30371
      Z: 604.893066
    }
    Rotation {
      Pitch: -17.9151
      Yaw: -110.935822
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3096486599549654778
  UnregisteredParameters {
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
  Camera {
    MinDistance: 300
    MaxDistance: 600
    PositionOffset {
      Z: 75
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
    UseAsAudioListener: true
    IsCameraCollisionEnabled: true
    EnablePictureInPicture: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 9672584007714138259
  Name: "Camera Start"
  Transform {
    Location {
      X: -836.536865
      Y: 4776.67432
      Z: 223.98761
    }
    Rotation {
      Pitch: -3.993927
      Yaw: -55.0993042
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 3096486599549654778
  UnregisteredParameters {
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
  Camera {
    MinDistance: 300
    MaxDistance: 600
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
    UseAsAudioListener: true
    IsCameraCollisionEnabled: true
    EnablePictureInPicture: true
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 1019400150421742406
  Name: "CinematicToolClient"
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
  ParentId: 3096486599549654778
  UnregisteredParameters {
    Overrides {
      Name: "cs:Root"
      ObjectReference {
        SelfId: 7048619468660248952
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
  Script {
    ScriptAsset {
      Id: 16289838474460724250
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 10785100915471240148
  Name: "Cinematic Shot Bindings"
  Transform {
    Location {
      Y: 6900
    }
    Rotation {
    }
    Scale {
      X: 1
      Y: 1
      Z: 1
    }
  }
  ParentId: 6820726947591553935
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
  BindingSet {
    BindingSetAsset {
      Id: 4750859414697067089
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 15022214900773327247
  Name: "README"
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
  ParentId: 6820726947591553935
  UnregisteredParameters {
    Overrides {
      Name: "cs:CinematicTriggerPlayer"
      AssetReference {
        Id: 9294573057591245565
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
  Script {
    ScriptAsset {
      Id: 4444909289848054572
    }
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
