Assets {
  Id: 736360303936294653
  Name: "Default Bindings"
  PlatformAssetType: 29
  SerializationVersion: 125
  BindingSetAsset {
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:spacebar"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:a"
          }
        }
      }
      Action: "Jump"
      Description: "Make the character jump."
      CoreBehavior {
        Value: "mc:ecorebehavior:jump"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:leftcontrol"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:c"
          }
          Controller {
            Value: "mc:ebindinggamepad:b"
          }
        }
      }
      Action: "Crouch"
      Description: "Enter crouch mode."
      CoreBehavior {
        Value: "mc:ecorebehavior:crouch"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:g"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:dpadup"
          }
        }
      }
      Action: "Mount"
      Description: "Enter mount mode."
      CoreBehavior {
        Value: "mc:ecorebehavior:mount"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:f"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:x"
          }
        }
      }
      Action: "Interact"
      Description: "Interact with triggers."
      CoreBehavior {
        Value: "mc:ecorebehavior:interact"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:none"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "Chat"
      Description: "Opens chat dialog and social menu."
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:tilde"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:middleclick"
          }
          Controller {
            Value: "mc:ebindinggamepad:view"
          }
        }
      }
      Action: "Slot Picker"
      Description: "Reopens last opened picker menu."
      CoreBehavior {
        Value: "mc:ecorebehavior:slotpicker"
      }
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:directional"
      }
      DirectionalBindingData {
        UpInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:w"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickup"
          }
        }
        LeftInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:a"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickleft"
          }
        }
        DownInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:s"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickdown"
          }
        }
        RightInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:d"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickright"
          }
        }
      }
      Action: "Move"
      Description: "Moves the character."
      CoreBehavior {
        Value: "mc:ecorebehavior:move"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:axis"
      }
      AxisBindingData {
        IncreaseInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:spacebar"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:a"
          }
        }
        DecreaseInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:leftcontrol"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:c"
          }
          Controller {
            Value: "mc:ebindinggamepad:b"
          }
        }
      }
      Action: "Move Vertically"
      Description: "Fly or swim vertically up and down."
      CoreBehavior {
        Value: "mc:ecorebehavior:movevertically"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:directional"
      }
      DirectionalBindingData {
        UpInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:mouseup"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:rightstickup"
          }
        }
        LeftInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:mouseleft"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:rightstickleft"
          }
        }
        DownInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:mousedown"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:rightstickdown"
          }
        }
        RightInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:mouseright"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:rightstickright"
          }
        }
      }
      Action: "Look"
      Description: "Controls the camera."
      CoreBehavior {
        Value: "mc:ecorebehavior:look"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:axis"
      }
      AxisBindingData {
        IncreaseInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:scrolldown"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:rightbumper"
          }
        }
        DecreaseInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:scrollup"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftbumper"
          }
        }
      }
      Action: "Zoom"
      Description: "Zoom in or out with the camera."
      CoreBehavior {
        Value: "mc:ecorebehavior:zoom"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:leftalt"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "Push-to-Talk"
      Description: "Toggle voice chat mode."
      CoreBehavior {
        Value: "mc:ecorebehavior:pushtotalk"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:leftclick"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:righttrigger"
          }
        }
      }
      Action: "Shoot"
      Description: "Shoot ability of weapon or equipment."
      CoreBehavior {
        Value: "mc:ecorebehavior:weapon"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:rightclick"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:lefttrigger"
          }
        }
      }
      Action: "Aim"
      Description: "Weapon or equipment aiming."
      CoreBehavior {
        Value: "mc:ecorebehavior:weapon"
      }
      Networked: true
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:r"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:y"
          }
        }
      }
      Action: "Reload"
      Description: "Reload ability on weapons."
      CoreBehavior {
        Value: "mc:ecorebehavior:weapon"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:leftclick"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:x"
          }
        }
      }
      Action: "Attack"
      Description: "Attack ability for melee weapons or equipment."
      CoreBehavior {
        Value: "mc:ecorebehavior:equipment"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:w"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:righttrigger"
          }
        }
      }
      Action: "Vehicle Accelerate"
      Description: "When driving, accelerate forward."
      CoreBehavior {
        Value: "mc:ecorebehavior:vehicleaccelerate"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:s"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:lefttrigger"
          }
        }
      }
      Action: "Vehicle Reverse"
      Description: "When driving, stop the vehicle and reverse."
      CoreBehavior {
        Value: "mc:ecorebehavior:vehiclereverse"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:axis"
      }
      AxisBindingData {
        IncreaseInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:d"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickright"
          }
        }
        DecreaseInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:a"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:leftstickleft"
          }
        }
      }
      Action: "Vehicle Turn"
      Description: "When driving, turn the vehicle."
      CoreBehavior {
        Value: "mc:ecorebehavior:vehicleturn"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:spacebar"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:b"
          }
        }
      }
      Action: "Vehicle Handbrake"
      Description: "When driving, apply the handbrake."
      CoreBehavior {
        Value: "mc:ecorebehavior:vehiclehandbrake"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:leftclick"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:a"
          }
        }
      }
      Action: "Vehicle Shoot"
      Description: "Shoot ability on vehicle."
      CoreBehavior {
        Value: "mc:ecorebehavior:vehicle"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:f"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:x"
          }
        }
      }
      Action: "Vehicle Exit"
      Description: "When driving, exit the vehicle."
      CoreBehavior {
        Value: "mc:ecorebehavior:vehicleexit"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:w"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "W"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:a"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "A"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:s"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "S"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:d"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "D"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:leftclick"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "LMB"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:rightclick"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "RMB"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:zero"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "0"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:one"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "1"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:two"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "2"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:three"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "3"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:four"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "4"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:five"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "5"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:six"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "6"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:seven"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "7"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:eight"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "8"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:nine"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "9"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:spacebar"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "Space"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
    Bindings {
      BindingType {
        Value: "mc:ebindingtype:basic"
      }
      BasicBindingData {
        BasicInputs {
          KeyboardPrimary {
            Value: "mc:ebindingkeyboard:backspace"
          }
          KeyboardSecondary {
            Value: "mc:ebindingkeyboard:none"
          }
          Controller {
            Value: "mc:ebindinggamepad:none"
          }
        }
      }
      Action: "Backspace"
      CoreBehavior {
        Value: "mc:ecorebehavior:none"
      }
      IsEnabledOnStart: true
    }
  }
}
