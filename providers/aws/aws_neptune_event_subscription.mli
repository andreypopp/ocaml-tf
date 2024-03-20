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

type aws_neptune_event_subscription

val aws_neptune_event_subscription :
  ?enabled:bool prop ->
  ?event_categories:string prop list ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?source_ids:string prop list ->
  ?source_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  sns_topic_arn:string prop ->
  unit ->
  aws_neptune_event_subscription

val yojson_of_aws_neptune_event_subscription :
  aws_neptune_event_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  customer_aws_id : string prop;
  enabled : bool prop;
  event_categories : string list prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  sns_topic_arn : string prop;
  source_ids : string list prop;
  source_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?event_categories:string prop list ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?source_ids:string prop list ->
  ?source_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  sns_topic_arn:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?event_categories:string prop list ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?source_ids:string prop list ->
  ?source_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  sns_topic_arn:string prop ->
  string ->
  t Tf_core.resource
