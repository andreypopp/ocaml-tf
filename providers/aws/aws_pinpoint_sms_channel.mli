(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_pinpoint_sms_channel

type t = private {
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
  promotional_messages_per_second : float prop;
  sender_id : string prop;
  short_code : string prop;
  transactional_messages_per_second : float prop;
}

val aws_pinpoint_sms_channel :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?sender_id:string prop ->
  ?short_code:string prop ->
  application_id:string prop ->
  string ->
  t
