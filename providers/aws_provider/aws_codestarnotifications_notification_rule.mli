(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codestarnotifications_notification_rule__target
type aws_codestarnotifications_notification_rule

type t = private {
  arn : string prop;
  detail_type : string prop;
  event_type_ids : string list prop;
  id : string prop;
  name : string prop;
  resource : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

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
  t
