(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ses_event_destination__cloudwatch_destination
type aws_ses_event_destination__kinesis_destination
type aws_ses_event_destination__sns_destination
type aws_ses_event_destination

val aws_ses_event_destination :
  ?enabled:bool prop ->
  ?id:string prop ->
  configuration_set_name:string prop ->
  matching_types:string prop list ->
  name:string prop ->
  cloudwatch_destination:
    aws_ses_event_destination__cloudwatch_destination list ->
  kinesis_destination:
    aws_ses_event_destination__kinesis_destination list ->
  sns_destination:aws_ses_event_destination__sns_destination list ->
  string ->
  unit
