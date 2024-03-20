(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_pinpoint_apns_voip_sandbox_channel

val aws_pinpoint_apns_voip_sandbox_channel :
  ?bundle_id:string prop ->
  ?certificate:string prop ->
  ?default_authentication_method:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?private_key:string prop ->
  ?team_id:string prop ->
  ?token_key:string prop ->
  ?token_key_id:string prop ->
  application_id:string prop ->
  unit ->
  aws_pinpoint_apns_voip_sandbox_channel

val yojson_of_aws_pinpoint_apns_voip_sandbox_channel :
  aws_pinpoint_apns_voip_sandbox_channel -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_id : string prop;
  bundle_id : string prop;
  certificate : string prop;
  default_authentication_method : string prop;
  enabled : bool prop;
  id : string prop;
  private_key : string prop;
  team_id : string prop;
  token_key : string prop;
  token_key_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bundle_id:string prop ->
  ?certificate:string prop ->
  ?default_authentication_method:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?private_key:string prop ->
  ?team_id:string prop ->
  ?token_key:string prop ->
  ?token_key_id:string prop ->
  application_id:string prop ->
  string ->
  t

val make :
  ?bundle_id:string prop ->
  ?certificate:string prop ->
  ?default_authentication_method:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?private_key:string prop ->
  ?team_id:string prop ->
  ?token_key:string prop ->
  ?token_key_id:string prop ->
  application_id:string prop ->
  string ->
  t Tf_core.resource
