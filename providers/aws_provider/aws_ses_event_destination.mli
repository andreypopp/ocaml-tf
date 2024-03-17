(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_event_destination__cloudwatch_destination
type aws_ses_event_destination__kinesis_destination
type aws_ses_event_destination__sns_destination
type aws_ses_event_destination

val aws_ses_event_destination :
  ?enabled:bool ->
  configuration_set_name:string ->
  matching_types:string list ->
  name:string ->
  cloudwatch_destination:
    aws_ses_event_destination__cloudwatch_destination list ->
  kinesis_destination:
    aws_ses_event_destination__kinesis_destination list ->
  sns_destination:aws_ses_event_destination__sns_destination list ->
  string ->
  unit
