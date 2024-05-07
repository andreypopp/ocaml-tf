(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_detective_member

val aws_detective_member :
  ?disable_email_notification:bool prop ->
  ?id:string prop ->
  ?message:string prop ->
  account_id:string prop ->
  email_address:string prop ->
  graph_arn:string prop ->
  unit ->
  aws_detective_member

val yojson_of_aws_detective_member : aws_detective_member -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  administrator_id : string prop;
  disable_email_notification : bool prop;
  disabled_reason : string prop;
  email_address : string prop;
  graph_arn : string prop;
  id : string prop;
  invited_time : string prop;
  message : string prop;
  status : string prop;
  updated_time : string prop;
  volume_usage_in_bytes : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?disable_email_notification:bool prop ->
  ?id:string prop ->
  ?message:string prop ->
  account_id:string prop ->
  email_address:string prop ->
  graph_arn:string prop ->
  string ->
  t

val make :
  ?disable_email_notification:bool prop ->
  ?id:string prop ->
  ?message:string prop ->
  account_id:string prop ->
  email_address:string prop ->
  graph_arn:string prop ->
  string ->
  t Tf_core.resource
