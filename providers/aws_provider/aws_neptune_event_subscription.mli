(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_event_subscription__timeouts
type aws_neptune_event_subscription

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
  ?timeouts:aws_neptune_event_subscription__timeouts ->
  sns_topic_arn:string prop ->
  string ->
  t
