// Auto-generated. Do not edit!

// (in-package hlpr_speech_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SpeechServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_last = null;
    }
    else {
      if (initObj.hasOwnProperty('get_last')) {
        this.get_last = initObj.get_last
      }
      else {
        this.get_last = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeechServiceRequest
    // Serialize message field [get_last]
    bufferOffset = _serializer.bool(obj.get_last, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeechServiceRequest
    let len;
    let data = new SpeechServiceRequest(null);
    // Deserialize message field [get_last]
    data.get_last = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hlpr_speech_msgs/SpeechServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '34c3c85c8e7befba1ea4e56d2a4777dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request values
    bool get_last
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeechServiceRequest(null);
    if (msg.get_last !== undefined) {
      resolved.get_last = msg.get_last;
    }
    else {
      resolved.get_last = false
    }

    return resolved;
    }
};

class SpeechServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speech_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('speech_cmd')) {
        this.speech_cmd = initObj.speech_cmd
      }
      else {
        this.speech_cmd = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeechServiceResponse
    // Serialize message field [speech_cmd]
    bufferOffset = _serializer.string(obj.speech_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeechServiceResponse
    let len;
    let data = new SpeechServiceResponse(null);
    // Deserialize message field [speech_cmd]
    data.speech_cmd = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.speech_cmd);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hlpr_speech_msgs/SpeechServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66b8c3f2415da3d1e6bf60087f6cab82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response values
    string speech_cmd
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeechServiceResponse(null);
    if (msg.speech_cmd !== undefined) {
      resolved.speech_cmd = msg.speech_cmd;
    }
    else {
      resolved.speech_cmd = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SpeechServiceRequest,
  Response: SpeechServiceResponse,
  md5sum() { return '8f7ae7a65dc30cceb3e782937b879015'; },
  datatype() { return 'hlpr_speech_msgs/SpeechService'; }
};
