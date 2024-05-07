(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_pinpoint_email_channel

val aws_pinpoint_email_channel :
  ?configuration_set:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  application_id:string prop ->
  from_address:string prop ->
  identity:string prop ->
  unit ->
  aws_pinpoint_email_channel

val yojson_of_aws_pinpoint_email_channel :
  aws_pinpoint_email_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_id : string prop;
  configuration_set : string prop;
  enabled : bool prop;
  from_address : string prop;
  id : string prop;
  identity : string prop;
  messages_per_second : float prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?configuration_set:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  application_id:string prop ->
  from_address:string prop ->
  identity:string prop ->
  string ->
  t

val make :
  ?configuration_set:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?role_arn:string prop ->
  application_id:string prop ->
  from_address:string prop ->
  identity:string prop ->
  string ->
  t Tf_core.resource
