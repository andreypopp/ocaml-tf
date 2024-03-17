(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_detective_member

val aws_detective_member :
  ?disable_email_notification:bool prop ->
  ?id:string prop ->
  ?message:string prop ->
  account_id:string prop ->
  email_address:string prop ->
  graph_arn:string prop ->
  string ->
  unit
