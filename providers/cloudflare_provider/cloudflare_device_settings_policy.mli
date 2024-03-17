(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_device_settings_policy

val cloudflare_device_settings_policy :
  ?allow_mode_switch:bool ->
  ?allow_updates:bool ->
  ?allowed_to_leave:bool ->
  ?auto_connect:float ->
  ?captive_portal:float ->
  ?default:bool ->
  ?disable_auto_fallback:bool ->
  ?enabled:bool ->
  ?exclude_office_ips:bool ->
  ?id:string ->
  ?match_:string ->
  ?precedence:float ->
  ?service_mode_v2_mode:string ->
  ?service_mode_v2_port:float ->
  ?support_url:string ->
  ?switch_locked:bool ->
  account_id:string ->
  description:string ->
  name:string ->
  string ->
  unit
