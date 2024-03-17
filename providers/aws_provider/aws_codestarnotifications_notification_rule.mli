(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codestarnotifications_notification_rule__target
type aws_codestarnotifications_notification_rule

val aws_codestarnotifications_notification_rule :
  ?id:string ->
  ?status:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  detail_type:string ->
  event_type_ids:string list ->
  name:string ->
  resource:string ->
  target:aws_codestarnotifications_notification_rule__target list ->
  string ->
  unit
