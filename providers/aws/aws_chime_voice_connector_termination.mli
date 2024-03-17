(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_chime_voice_connector_termination

type t = private {
  calling_regions : string list prop;
  cidr_allow_list : string list prop;
  cps_limit : float prop;
  default_phone_number : string prop;
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

val aws_chime_voice_connector_termination :
  ?cps_limit:float prop ->
  ?default_phone_number:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  calling_regions:string prop list ->
  cidr_allow_list:string prop list ->
  voice_connector_id:string prop ->
  string ->
  t
