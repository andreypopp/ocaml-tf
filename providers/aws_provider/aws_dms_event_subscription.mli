(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_event_subscription__timeouts
type aws_dms_event_subscription

val aws_dms_event_subscription :
  ?enabled:bool ->
  ?source_ids:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_dms_event_subscription__timeouts ->
  event_categories:string list ->
  name:string ->
  sns_topic_arn:string ->
  source_type:string ->
  string ->
  unit
