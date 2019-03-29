// Auto-generated. Do not edit!

// (in-package handheld_device.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class handheld_device_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device_distance = null;
      this.quatx = null;
      this.quaty = null;
      this.quatz = null;
      this.quatw = null;
      this.accelx = null;
      this.accely = null;
      this.accelz = null;
      this.device_switch = null;
    }
    else {
      if (initObj.hasOwnProperty('device_distance')) {
        this.device_distance = initObj.device_distance
      }
      else {
        this.device_distance = 0;
      }
      if (initObj.hasOwnProperty('quatx')) {
        this.quatx = initObj.quatx
      }
      else {
        this.quatx = 0.0;
      }
      if (initObj.hasOwnProperty('quaty')) {
        this.quaty = initObj.quaty
      }
      else {
        this.quaty = 0.0;
      }
      if (initObj.hasOwnProperty('quatz')) {
        this.quatz = initObj.quatz
      }
      else {
        this.quatz = 0.0;
      }
      if (initObj.hasOwnProperty('quatw')) {
        this.quatw = initObj.quatw
      }
      else {
        this.quatw = 0.0;
      }
      if (initObj.hasOwnProperty('accelx')) {
        this.accelx = initObj.accelx
      }
      else {
        this.accelx = 0.0;
      }
      if (initObj.hasOwnProperty('accely')) {
        this.accely = initObj.accely
      }
      else {
        this.accely = 0.0;
      }
      if (initObj.hasOwnProperty('accelz')) {
        this.accelz = initObj.accelz
      }
      else {
        this.accelz = 0.0;
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
    bufferOffset = _serializer.int16(obj.device_distance, buffer, bufferOffset);
    // Serialize message field [quatx]
    bufferOffset = _serializer.float32(obj.quatx, buffer, bufferOffset);
    // Serialize message field [quaty]
    bufferOffset = _serializer.float32(obj.quaty, buffer, bufferOffset);
    // Serialize message field [quatz]
    bufferOffset = _serializer.float32(obj.quatz, buffer, bufferOffset);
    // Serialize message field [quatw]
    bufferOffset = _serializer.float32(obj.quatw, buffer, bufferOffset);
    // Serialize message field [accelx]
    bufferOffset = _serializer.float32(obj.accelx, buffer, bufferOffset);
    // Serialize message field [accely]
    bufferOffset = _serializer.float32(obj.accely, buffer, bufferOffset);
    // Serialize message field [accelz]
    bufferOffset = _serializer.float32(obj.accelz, buffer, bufferOffset);
    // Serialize message field [device_switch]
    bufferOffset = _serializer.int8(obj.device_switch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type handheld_device_data
    let len;
    let data = new handheld_device_data(null);
    // Deserialize message field [device_distance]
    data.device_distance = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [quatx]
    data.quatx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [quaty]
    data.quaty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [quatz]
    data.quatz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [quatw]
    data.quatw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelx]
    data.accelx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accely]
    data.accely = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accelz]
    data.accelz = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [device_switch]
    data.device_switch = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'handheld_device/handheld_device_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f3fc4e797e13ce34dcd40452711b663';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 device_distance
    float32 quatx
    float32 quaty
    float32 quatz
    float32 quatw
    float32 accelx
    float32 accely
    float32 accelz
    int8 device_switch
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

    if (msg.quatx !== undefined) {
      resolved.quatx = msg.quatx;
    }
    else {
      resolved.quatx = 0.0
    }

    if (msg.quaty !== undefined) {
      resolved.quaty = msg.quaty;
    }
    else {
      resolved.quaty = 0.0
    }

    if (msg.quatz !== undefined) {
      resolved.quatz = msg.quatz;
    }
    else {
      resolved.quatz = 0.0
    }

    if (msg.quatw !== undefined) {
      resolved.quatw = msg.quatw;
    }
    else {
      resolved.quatw = 0.0
    }

    if (msg.accelx !== undefined) {
      resolved.accelx = msg.accelx;
    }
    else {
      resolved.accelx = 0.0
    }

    if (msg.accely !== undefined) {
      resolved.accely = msg.accely;
    }
    else {
      resolved.accely = 0.0
    }

    if (msg.accelz !== undefined) {
      resolved.accelz = msg.accelz;
    }
    else {
      resolved.accelz = 0.0
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
