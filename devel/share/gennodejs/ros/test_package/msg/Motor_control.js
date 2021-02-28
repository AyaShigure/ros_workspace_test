// Auto-generated. Do not edit!

// (in-package test_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Motor_control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.left_speed = null;
      this.left_duration = null;
      this.right_speed = null;
      this.right_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('left_speed')) {
        this.left_speed = initObj.left_speed
      }
      else {
        this.left_speed = 0;
      }
      if (initObj.hasOwnProperty('left_duration')) {
        this.left_duration = initObj.left_duration
      }
      else {
        this.left_duration = 0.0;
      }
      if (initObj.hasOwnProperty('right_speed')) {
        this.right_speed = initObj.right_speed
      }
      else {
        this.right_speed = 0;
      }
      if (initObj.hasOwnProperty('right_duration')) {
        this.right_duration = initObj.right_duration
      }
      else {
        this.right_duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motor_control
    // Serialize message field [left_speed]
    bufferOffset = _serializer.int16(obj.left_speed, buffer, bufferOffset);
    // Serialize message field [left_duration]
    bufferOffset = _serializer.float32(obj.left_duration, buffer, bufferOffset);
    // Serialize message field [right_speed]
    bufferOffset = _serializer.int16(obj.right_speed, buffer, bufferOffset);
    // Serialize message field [right_duration]
    bufferOffset = _serializer.float32(obj.right_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motor_control
    let len;
    let data = new Motor_control(null);
    // Deserialize message field [left_speed]
    data.left_speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [left_duration]
    data.left_duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_speed]
    data.right_speed = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [right_duration]
    data.right_duration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_package/Motor_control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb71cca081d8618640e259cd620adabe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 left_speed
    float32 left_duration
    int16 right_speed
    float32 right_duration
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Motor_control(null);
    if (msg.left_speed !== undefined) {
      resolved.left_speed = msg.left_speed;
    }
    else {
      resolved.left_speed = 0
    }

    if (msg.left_duration !== undefined) {
      resolved.left_duration = msg.left_duration;
    }
    else {
      resolved.left_duration = 0.0
    }

    if (msg.right_speed !== undefined) {
      resolved.right_speed = msg.right_speed;
    }
    else {
      resolved.right_speed = 0
    }

    if (msg.right_duration !== undefined) {
      resolved.right_duration = msg.right_duration;
    }
    else {
      resolved.right_duration = 0.0
    }

    return resolved;
    }
};

module.exports = Motor_control;
