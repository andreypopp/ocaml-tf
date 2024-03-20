(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_pinpoint_sms_channel

val aws_pinpoint_sms_channel :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?sender_id:string prop ->
  ?short_code:string prop ->
  application_id:string prop ->
  unit ->
  aws_pinpoint_sms_channel

val yojson_of_aws_pinpoint_sms_channel :
  aws_pinpoint_sms_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  enabled : bool prop;
  id : string prop;
  promotional_messages_per_second : float prop;
  sender_id : string prop;
  short_code : string prop;
  transactional_messages_per_second : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?sender_id:string prop ->
  ?short_code:string prop ->
  application_id:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?sender_id:string prop ->
  ?short_code:string prop ->
  application_id:string prop ->
  string ->
  t Tf_core.resource
