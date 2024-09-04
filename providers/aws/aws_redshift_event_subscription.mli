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

type aws_redshift_event_subscription

val aws_redshift_event_subscription :
  ?enabled:bool prop ->
  ?event_categories:string prop list ->
  ?id:string prop ->
  ?severity:string prop ->
  ?source_ids:string prop list ->
  ?source_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  sns_topic_arn:string prop ->
  unit ->
  aws_redshift_event_subscription

val yojson_of_aws_redshift_event_subscription :
  aws_redshift_event_subscription -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  customer_aws_id : string prop;
  enabled : bool prop;
  event_categories : string list prop;
  id : string prop;
  name : string prop;
  severity : string prop;
  sns_topic_arn : string prop;
  source_ids : string list prop;
  source_type : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?event_categories:string prop list ->
  ?id:string prop ->
  ?severity:string prop ->
  ?source_ids:string prop list ->
  ?source_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  sns_topic_arn:string prop ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?event_categories:string prop list ->
  ?id:string prop ->
  ?severity:string prop ->
  ?source_ids:string prop list ->
  ?source_type:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  sns_topic_arn:string prop ->
  string ->
  t Tf_core.resource
