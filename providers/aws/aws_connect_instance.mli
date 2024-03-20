(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_connect_instance

val aws_connect_instance :
  ?auto_resolve_best_voices_enabled:bool prop ->
  ?contact_flow_logs_enabled:bool prop ->
  ?contact_lens_enabled:bool prop ->
  ?directory_id:string prop ->
  ?early_media_enabled:bool prop ->
  ?id:string prop ->
  ?instance_alias:string prop ->
  ?multi_party_conference_enabled:bool prop ->
  ?timeouts:timeouts ->
  identity_management_type:string prop ->
  inbound_calls_enabled:bool prop ->
  outbound_calls_enabled:bool prop ->
  unit ->
  aws_connect_instance

val yojson_of_aws_connect_instance : aws_connect_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  auto_resolve_best_voices_enabled : bool prop;
  contact_flow_logs_enabled : bool prop;
  contact_lens_enabled : bool prop;
  created_time : string prop;
  directory_id : string prop;
  early_media_enabled : bool prop;
  id : string prop;
  identity_management_type : string prop;
  inbound_calls_enabled : bool prop;
  instance_alias : string prop;
  multi_party_conference_enabled : bool prop;
  outbound_calls_enabled : bool prop;
  service_role : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_resolve_best_voices_enabled:bool prop ->
  ?contact_flow_logs_enabled:bool prop ->
  ?contact_lens_enabled:bool prop ->
  ?directory_id:string prop ->
  ?early_media_enabled:bool prop ->
  ?id:string prop ->
  ?instance_alias:string prop ->
  ?multi_party_conference_enabled:bool prop ->
  ?timeouts:timeouts ->
  identity_management_type:string prop ->
  inbound_calls_enabled:bool prop ->
  outbound_calls_enabled:bool prop ->
  string ->
  t

val make :
  ?auto_resolve_best_voices_enabled:bool prop ->
  ?contact_flow_logs_enabled:bool prop ->
  ?contact_lens_enabled:bool prop ->
  ?directory_id:string prop ->
  ?early_media_enabled:bool prop ->
  ?id:string prop ->
  ?instance_alias:string prop ->
  ?multi_party_conference_enabled:bool prop ->
  ?timeouts:timeouts ->
  identity_management_type:string prop ->
  inbound_calls_enabled:bool prop ->
  outbound_calls_enabled:bool prop ->
  string ->
  t Tf_core.resource
