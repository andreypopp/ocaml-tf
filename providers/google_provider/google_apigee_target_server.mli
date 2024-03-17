(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_target_server__s_sl_info__common_name
type google_apigee_target_server__s_sl_info
type google_apigee_target_server__timeouts
type google_apigee_target_server

val google_apigee_target_server :
  ?description:string prop ->
  ?id:string prop ->
  ?is_enabled:bool prop ->
  ?protocol:string prop ->
  ?timeouts:google_apigee_target_server__timeouts ->
  env_id:string prop ->
  host:string prop ->
  name:string prop ->
  port:float prop ->
  s_sl_info:google_apigee_target_server__s_sl_info list ->
  string ->
  unit
