// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class led_state {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ledState = null;
    }
    else {
      if (initObj.hasOwnProperty('ledState')) {
        this.ledState = initObj.ledState
      }
      else {
        this.ledState = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type led_state
    // Serialize message field [ledState]
    bufferOffset = _serializer.string(obj.ledState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type led_state
    let len;
    let data = new led_state(null);
    // Deserialize message field [ledState]
    data.ledState = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ledState.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/led_state';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e72d8d4579cf7ba2c7a9cea0cf0c7ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ledState
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new led_state(null);
    if (msg.ledState !== undefined) {
      resolved.ledState = msg.ledState;
    }
    else {
      resolved.ledState = ''
    }

    return resolved;
    }
};

module.exports = led_state;
