(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_chime_voice_connector_termination

val aws_chime_voice_connector_termination :
  ?cps_limit:float prop ->
  ?default_phone_number:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  calling_regions:string prop list ->
  cidr_allow_list:string prop list ->
  voice_connector_id:string prop ->
  unit ->
  aws_chime_voice_connector_termination

val yojson_of_aws_chime_voice_connector_termination :
  aws_chime_voice_connector_termination -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  calling_regions : string list prop;
  cidr_allow_list : string list prop;
  cps_limit : float prop;
  default_phone_number : string prop;
  disabled : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?cps_limit:float prop ->
  ?default_phone_number:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  calling_regions:string prop list ->
  cidr_allow_list:string prop list ->
  voice_connector_id:string prop ->
  string ->
  t

val make :
  ?cps_limit:float prop ->
  ?default_phone_number:string prop ->
  ?disabled:bool prop ->
  ?id:string prop ->
  calling_regions:string prop list ->
  cidr_allow_list:string prop list ->
  voice_connector_id:string prop ->
  string ->
  t Tf_core.resource
