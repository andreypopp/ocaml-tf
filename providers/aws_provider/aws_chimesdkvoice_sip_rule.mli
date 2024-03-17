(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chimesdkvoice_sip_rule__target_applications
type aws_chimesdkvoice_sip_rule

val aws_chimesdkvoice_sip_rule :
  ?disabled:bool ->
  ?id:string ->
  name:string ->
  trigger_type:string ->
  trigger_value:string ->
  target_applications:
    aws_chimesdkvoice_sip_rule__target_applications list ->
  string ->
  unit
