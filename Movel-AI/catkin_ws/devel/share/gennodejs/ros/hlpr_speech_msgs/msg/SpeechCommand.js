// Auto-generated. Do not edit!

// (in-package hlpr_speech_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StampedString = require('./StampedString.js');

//-----------------------------------------------------------

class SpeechCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamped_string = null;
      this.command = null;
    }
    else {
      if (initObj.hasOwnProperty('stamped_string')) {
        this.stamped_string = initObj.stamped_string
      }
      else {
        this.stamped_string = new StampedString();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeechCommand
    // Serialize message field [stamped_string]
    bufferOffset = StampedString.serialize(obj.stamped_string, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeechCommand
    let len;
    let data = new SpeechCommand(null);
    // Deserialize message field [stamped_string]
    data.stamped_string = StampedString.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += StampedString.getMessageSize(object.stamped_string);
    length += _getByteLength(object.command);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hlpr_speech_msgs/SpeechCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ecdf8b4af928b454a75935476d11010';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This messages includes the mapping from
    # the detected keyphrase to the command
    
    # Detected keyphrase and its time
    StampedString stamped_string
    # The mapped speech command
    string command
    
    
    
    ================================================================================
    MSG: hlpr_speech_msgs/StampedString
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
    const resolved = new SpeechCommand(null);
    if (msg.stamped_string !== undefined) {
      resolved.stamped_string = StampedString.Resolve(msg.stamped_string)
    }
    else {
      resolved.stamped_string = new StampedString()
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    return resolved;
    }
};

module.exports = SpeechCommand;
