(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_neptune_event_subscription__timeouts
type aws_neptune_event_subscription

val aws_neptune_event_subscription :
  ?enabled:bool ->
  ?event_categories:string list ->
  ?source_ids:string list ->
  ?source_type:string ->
  ?tags:(string * string) list ->
  ?timeouts:aws_neptune_event_subscription__timeouts ->
  sns_topic_arn:string ->
  string ->
  unit
