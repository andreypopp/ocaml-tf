(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chime_voice_connector_termination

val aws_chime_voice_connector_termination :
  ?cps_limit:float ->
  ?default_phone_number:string ->
  ?disabled:bool ->
  calling_regions:string list ->
  cidr_allow_list:string list ->
  voice_connector_id:string ->
  string ->
  unit
