Name: "Flashlight_2"
RootId: 16878548513094977469
Objects {
  Id: 13668594335765989498
  Name: "geometry"
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
  ParentId: 16878548513094977469
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:forceoff"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Folder {
    IsFilePartition: true
    FilePartitionName: "geometry_2"
  }
  NetworkRelevanceDistance {
    Value: "mc:eproxyrelevance:critical"
  }
  IsReplicationEnabledByDefault: true
}
Objects {
  Id: 8637564141550692653
  Name: "Spotlight"
  Transform {
    Location {
      X: 64.2571411
      Y: 1.1739502
      Z: 31.8442
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
  ParentId: 16878548513094977469
  WantsNetworking: true
  Collidable_v2 {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Visible_v2 {
    Value: "mc:evisibilitysetting:inheritfromparent"
  }
  CameraCollidable {
    Value: "mc:ecollisionsetting:inheritfromparent"
  }
  Light {
    Intensity: 100
    Color {
      R: 1000
      G: 1000
      B: 1000
      A: 1
    }
    CastShadows: true
    VolumetricIntensity: 15.9613047
    TeamSettings {
    }
    Light {
      UseTemperature: true
      Temperature: 6234.4541
      LocalLight {
        AttenuationRadius: 1131.60339
        SpotLight {
          SourceRadius: 20
          SoftSourceRadius: 20
          SourceLength: -100
          FallOffExponent: 8
          InnerConeAngle: 22.6472454
          OuterConeAngle: 32.3085022
          Profile {
            Value: "mc:espotlightprofile:softthreeprong"
          }
        }
      }
      MaxDrawDistance: 5000
      MaxDistanceFadeRange: 1000
    }
    CastVolumetricShadows: true
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
