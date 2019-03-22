// Auto-generated. Do not edit!

// (in-package handheld_device.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class handheld_device_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device_distance = null;
      this.device_quat = null;
      this.device_accel = null;
      this.device_switch = null;
    }
    else {
      if (initObj.hasOwnProperty('device_distance')) {
        this.device_distance = initObj.device_distance
      }
      else {
        this.device_distance = 0;
      }
      if (initObj.hasOwnProperty('device_quat')) {
        this.device_quat = initObj.device_quat
      }
      else {
        this.device_quat = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('device_accel')) {
        this.device_accel = initObj.device_accel
      }
      else {
        this.device_accel = new geometry_msgs.msg.Accel();
      }
      if (initObj.hasOwnProperty('device_switch')) {
        this.device_switch = initObj.device_switch
      }
      else {
        this.device_switch = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type handheld_device_data
    // Serialize message field [device_distance]
    bufferOffset = _serializer.int64(obj.device_distance, buffer, bufferOffset);
    // Serialize message field [device_quat]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.device_quat, buffer, bufferOffset);
    // Serialize message field [device_accel]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.device_accel, buffer, bufferOffset);
    // Serialize message field [device_switch]
    bufferOffset = _serializer.int64(obj.device_switch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type handheld_device_data
    let len;
    let data = new handheld_device_data(null);
    // Deserialize message field [device_distance]
    data.device_distance = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [device_quat]
    data.device_quat = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [device_accel]
    data.device_accel = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    // Deserialize message field [device_switch]
    data.device_switch = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'handheld_device/handheld_device_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '894e9b259d1d4e8448e9e2d9ffed9851';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 device_distance
    geometry_msgs/Quaternion device_quat
    geometry_msgs/Accel device_accel
    int64 device_switch
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new handheld_device_data(null);
    if (msg.device_distance !== undefined) {
      resolved.device_distance = msg.device_distance;
    }
    else {
      resolved.device_distance = 0
    }

    if (msg.device_quat !== undefined) {
      resolved.device_quat = geometry_msgs.msg.Quaternion.Resolve(msg.device_quat)
    }
    else {
      resolved.device_quat = new geometry_msgs.msg.Quaternion()
    }

    if (msg.device_accel !== undefined) {
      resolved.device_accel = geometry_msgs.msg.Accel.Resolve(msg.device_accel)
    }
    else {
      resolved.device_accel = new geometry_msgs.msg.Accel()
    }

    if (msg.device_switch !== undefined) {
      resolved.device_switch = msg.device_switch;
    }
    else {
      resolved.device_switch = 0
    }

    return resolved;
    }
};

module.exports = handheld_device_data;
