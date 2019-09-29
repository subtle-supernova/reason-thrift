(*
 Autogenerated by Thrift Compiler (0.13.0)

 DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING
*)

open Thrift
class sharedStruct =
object (self)
  val mutable _key : Int32.t option = None
  method get_key = _key
  method grab_key = match _key with None->raise (Field_empty "sharedStruct.key") | Some _x0 -> _x0
  method set_key _x0 = _key <- Some _x0
  method unset_key = _key <- None
  method reset_key = _key <- None

  val mutable _value : string option = None
  method get_value = _value
  method grab_value = match _value with None->raise (Field_empty "sharedStruct.value") | Some _x1 -> _x1
  method set_value _x1 = _value <- Some _x1
  method unset_value = _value <- None
  method reset_value = _value <- None

  method copy =
      let _new = Oo.copy self in
    _new
  method write (oprot : Protocol.t) =
    oprot#writeStructBegin "SharedStruct";
    (match _key with None -> () | Some _v -> 
      oprot#writeFieldBegin("key",Protocol.T_I32,1);
      oprot#writeI32(_v);
      oprot#writeFieldEnd
    );
    (match _value with None -> () | Some _v -> 
      oprot#writeFieldBegin("value",Protocol.T_STRING,2);
      oprot#writeString(_v);
      oprot#writeFieldEnd
    );
    oprot#writeFieldStop;
    oprot#writeStructEnd
end
let rec read_sharedStruct (iprot : Protocol.t) =
  let _str4 = new sharedStruct in
    ignore(iprot#readStructBegin);
    (try while true do
        let (_,_t5,_id6) = iprot#readFieldBegin in
        if _t5 = Protocol.T_STOP then
          raise Break
        else ();
        (match _id6 with 
          | 1 -> (if _t5 = Protocol.T_I32 then
              _str4#set_key iprot#readI32
            else
              iprot#skip _t5)
          | 2 -> (if _t5 = Protocol.T_STRING then
              _str4#set_value iprot#readString
            else
              iprot#skip _t5)
          | _ -> iprot#skip _t5);
        iprot#readFieldEnd;
      done; ()
    with Break -> ());
    iprot#readStructEnd;
    _str4

