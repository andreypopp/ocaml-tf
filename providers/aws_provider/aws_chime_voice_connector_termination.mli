(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chime_voice_connector_termination

val aws_chime_voice_connector_termination :
  ?cps_limit:float prop ->
  ?default_phone_number:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  calling_regions:string prop list ->
  cidr_allow_list:string prop list ->
  voice_connector_id:string prop ->
  string ->
  unit
