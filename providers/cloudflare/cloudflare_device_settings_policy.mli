(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cloudflare_device_settings_policy

val cloudflare_device_settings_policy :
  ?allow_mode_switch:bool prop ->
  ?allow_updates:bool prop ->
  ?allowed_to_leave:bool prop ->
  ?auto_connect:float prop ->
  ?captive_portal:float prop ->
  ?default:bool prop ->
  ?disable_auto_fallback:bool prop ->
  ?enabled:bool prop ->
  ?exclude_office_ips:bool prop ->
  ?id:string prop ->
  ?match_:string prop ->
  ?precedence:float prop ->
  ?service_mode_v2_mode:string prop ->
  ?service_mode_v2_port:float prop ->
  ?support_url:string prop ->
  ?switch_locked:bool prop ->
  account_id:string prop ->
  description:string prop ->
  name:string prop ->
  unit ->
  cloudflare_device_settings_policy

val yojson_of_cloudflare_device_settings_policy :
  cloudflare_device_settings_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  allow_mode_switch : bool prop;
  allow_updates : bool prop;
  allowed_to_leave : bool prop;
  auto_connect : float prop;
  captive_portal : float prop;
  default : bool prop;
  description : string prop;
  disable_auto_fallback : bool prop;
  enabled : bool prop;
  exclude_office_ips : bool prop;
  id : string prop;
  match_ : string prop;
  name : string prop;
  precedence : float prop;
  service_mode_v2_mode : string prop;
  service_mode_v2_port : float prop;
  support_url : string prop;
  switch_locked : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_mode_switch:bool prop ->
  ?allow_updates:bool prop ->
  ?allowed_to_leave:bool prop ->
  ?auto_connect:float prop ->
  ?captive_portal:float prop ->
  ?default:bool prop ->
  ?disable_auto_fallback:bool prop ->
  ?enabled:bool prop ->
  ?exclude_office_ips:bool prop ->
  ?id:string prop ->
  ?match_:string prop ->
  ?precedence:float prop ->
  ?service_mode_v2_mode:string prop ->
  ?service_mode_v2_port:float prop ->
  ?support_url:string prop ->
  ?switch_locked:bool prop ->
  account_id:string prop ->
  description:string prop ->
  name:string prop ->
  string ->
  t
