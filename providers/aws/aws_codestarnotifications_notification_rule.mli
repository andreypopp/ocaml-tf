(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type target

val target :
  ?type_:string prop -> address:string prop -> unit -> target

type aws_codestarnotifications_notification_rule

val aws_codestarnotifications_notification_rule :
  ?id:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  detail_type:string prop ->
  event_type_ids:string prop list ->
  name:string prop ->
  resource:string prop ->
  target:target list ->
  unit ->
  aws_codestarnotifications_notification_rule

val yojson_of_aws_codestarnotifications_notification_rule :
  aws_codestarnotifications_notification_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  detail_type : string prop;
  event_type_ids : string list prop;
  id : string prop;
  name : string prop;
  resource : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  detail_type:string prop ->
  event_type_ids:string prop list ->
  name:string prop ->
  resource:string prop ->
  target:target list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?status:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  detail_type:string prop ->
  event_type_ids:string prop list ->
  name:string prop ->
  resource:string prop ->
  target:target list ->
  string ->
  t Tf_core.resource
