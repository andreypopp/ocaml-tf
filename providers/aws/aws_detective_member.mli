(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_detective_member

type t = private {
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

val aws_detective_member :
  ?disable_email_notification:bool prop ->
  ?id:string prop ->
  ?message:string prop ->
  account_id:string prop ->
  email_address:string prop ->
  graph_arn:string prop ->
  string ->
  t
