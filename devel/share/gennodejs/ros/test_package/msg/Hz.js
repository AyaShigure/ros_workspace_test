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

class Hz {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Hz = null;
      this.distance = null;
    }
    else {
      if (initObj.hasOwnProperty('Hz')) {
        this.Hz = initObj.Hz
      }
      else {
        this.Hz = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Hz
    // Serialize message field [Hz]
    bufferOffset = _serializer.int16(obj.Hz, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Hz
    let len;
    let data = new Hz(null);
    // Deserialize message field [Hz]
    data.Hz = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_package/Hz';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4cb9cdb75a7d736a7cc332f56659b712';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 Hz
    float32 distance
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Hz(null);
    if (msg.Hz !== undefined) {
      resolved.Hz = msg.Hz;
    }
    else {
      resolved.Hz = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    return resolved;
    }
};

module.exports = Hz;
