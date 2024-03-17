(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codestarnotifications_notification_rule__target
type aws_codestarnotifications_notification_rule

val aws_codestarnotifications_notification_rule :
  ?id:string prop ->
  ?status:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  detail_type:string prop ->
  event_type_ids:string prop list ->
  name:string prop ->
  resource:string prop ->
  target:aws_codestarnotifications_notification_rule__target list ->
  string ->
  unit
