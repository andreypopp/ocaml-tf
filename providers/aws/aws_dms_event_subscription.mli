(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_dms_event_subscription

val aws_dms_event_subscription :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?source_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  event_categories:string prop list ->
  name:string prop ->
  sns_topic_arn:string prop ->
  source_type:string prop ->
  unit ->
  aws_dms_event_subscription

val yojson_of_aws_dms_event_subscription :
  aws_dms_event_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  enabled : bool prop;
  event_categories : string list prop;
  id : string prop;
  name : string prop;
  sns_topic_arn : string prop;
  source_ids : string list prop;
  source_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?source_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  event_categories:string prop list ->
  name:string prop ->
  sns_topic_arn:string prop ->
  source_type:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?source_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  event_categories:string prop list ->
  name:string prop ->
  sns_topic_arn:string prop ->
  source_type:string prop ->
  string ->
  t Tf_core.resource
