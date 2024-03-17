(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_event_subscription__timeouts
type aws_redshift_event_subscription

val aws_redshift_event_subscription :
  ?enabled:bool ->
  ?event_categories:string list ->
  ?id:string ->
  ?severity:string ->
  ?source_ids:string list ->
  ?source_type:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  ?timeouts:aws_redshift_event_subscription__timeouts ->
  name:string ->
  sns_topic_arn:string ->
  string ->
  unit
