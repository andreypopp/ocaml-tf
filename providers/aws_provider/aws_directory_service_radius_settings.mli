(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_radius_settings__timeouts
type aws_directory_service_radius_settings

val aws_directory_service_radius_settings :
  ?use_same_username:bool ->
  ?timeouts:aws_directory_service_radius_settings__timeouts ->
  authentication_protocol:string ->
  directory_id:string ->
  display_label:string ->
  radius_port:float ->
  radius_retries:float ->
  radius_servers:string list ->
  radius_timeout:float ->
  shared_secret:string ->
  string ->
  unit
