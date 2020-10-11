// Auto-generated. Do not edit!

// (in-package hlpr_speech_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StampedString {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.keyphrase = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('keyphrase')) {
        this.keyphrase = initObj.keyphrase
      }
      else {
        this.keyphrase = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StampedString
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [keyphrase]
    bufferOffset = _serializer.string(obj.keyphrase, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StampedString
    let len;
    let data = new StampedString(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [keyphrase]
    data.keyphrase = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.keyphrase);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hlpr_speech_msgs/StampedString';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dab84539140abbb7370c583798723196';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Stamped string message to be used in speech recognition
    
    #Time stamp
    time stamp
    #Detected keyphrase
    string keyphrase
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StampedString(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.keyphrase !== undefined) {
      resolved.keyphrase = msg.keyphrase;
    }
    else {
      resolved.keyphrase = ''
    }

    return resolved;
    }
};

module.exports = StampedString;
