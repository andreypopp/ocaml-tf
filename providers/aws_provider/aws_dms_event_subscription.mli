(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_dms_event_subscription__timeouts
type aws_dms_event_subscription

val aws_dms_event_subscription :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?source_ids:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_dms_event_subscription__timeouts ->
  event_categories:string prop list ->
  name:string prop ->
  sns_topic_arn:string prop ->
  source_type:string prop ->
  string ->
  unit
