(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_target_server__s_sl_info__common_name
type google_apigee_target_server__s_sl_info
type google_apigee_target_server__timeouts
type google_apigee_target_server

val google_apigee_target_server :
  ?description:string ->
  ?is_enabled:bool ->
  ?timeouts:google_apigee_target_server__timeouts ->
  env_id:string ->
  host:string ->
  name:string ->
  port:float ->
  s_sl_info:google_apigee_target_server__s_sl_info list ->
  string ->
  unit
