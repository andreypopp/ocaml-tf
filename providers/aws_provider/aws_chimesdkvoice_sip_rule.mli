(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chimesdkvoice_sip_rule__target_applications
type aws_chimesdkvoice_sip_rule

type t = private {
  disabled : bool prop;
  id : string prop;
  name : string prop;
  trigger_type : string prop;
  trigger_value : string prop;
}

val aws_chimesdkvoice_sip_rule :
  ?disabled:bool prop ->
  ?id:string prop ->
  name:string prop ->
  trigger_type:string prop ->
  trigger_value:string prop ->
  target_applications:
    aws_chimesdkvoice_sip_rule__target_applications list ->
  string ->
  t
