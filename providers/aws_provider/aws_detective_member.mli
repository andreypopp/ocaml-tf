(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_detective_member

val aws_detective_member :
  ?disable_email_notification:bool ->
  ?id:string ->
  ?message:string ->
  account_id:string ->
  email_address:string ->
  graph_arn:string ->
  string ->
  unit
