(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type s_sl_info__common_name

val s_sl_info__common_name :
  ?value:string prop ->
  ?wildcard_match:bool prop ->
  unit ->
  s_sl_info__common_name

type s_sl_info

val s_sl_info :
  ?ciphers:string prop list ->
  ?client_auth_enabled:bool prop ->
  ?ignore_validation_errors:bool prop ->
  ?key_alias:string prop ->
  ?key_store:string prop ->
  ?protocols:string prop list ->
  ?trust_store:string prop ->
  ?common_name:s_sl_info__common_name list ->
  enabled:bool prop ->
  unit ->
  s_sl_info

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_apigee_target_server

val google_apigee_target_server :
  ?description:string prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?protocol:string prop ->
  ?s_sl_info:s_sl_info list ->
  ?timeouts:timeouts ->
  env_id:string prop ->
  host:string prop ->
  name:string prop ->
  port:float prop ->
  unit ->
  google_apigee_target_server

val yojson_of_google_apigee_target_server :
  google_apigee_target_server -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  env_id : string prop;
  host : string prop;
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
  port : float prop;
  protocol : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?protocol:string prop ->
  ?s_sl_info:s_sl_info list ->
  ?timeouts:timeouts ->
  env_id:string prop ->
  host:string prop ->
  name:string prop ->
  port:float prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?protocol:string prop ->
  ?s_sl_info:s_sl_info list ->
  ?timeouts:timeouts ->
  env_id:string prop ->
  host:string prop ->
  name:string prop ->
  port:float prop ->
  string ->
  t Tf_core.resource
