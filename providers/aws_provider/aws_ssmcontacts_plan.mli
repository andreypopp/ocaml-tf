(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_ssmcontacts_plan__stage__target__channel_target_info
type aws_ssmcontacts_plan__stage__target__contact_target_info
type aws_ssmcontacts_plan__stage__target
type aws_ssmcontacts_plan__stage
type aws_ssmcontacts_plan

val aws_ssmcontacts_plan :
  ?id:string prop ->
  contact_id:string prop ->
  stage:aws_ssmcontacts_plan__stage list ->
  string ->
  unit
