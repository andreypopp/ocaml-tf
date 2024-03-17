(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_directory_service_radius_settings__timeouts
type aws_directory_service_radius_settings

type t = private {
  authentication_protocol : string prop;
  directory_id : string prop;
  display_label : string prop;
  id : string prop;
  radius_port : float prop;
  radius_retries : float prop;
  radius_servers : string list prop;
  radius_timeout : float prop;
  shared_secret : string prop;
  use_same_username : bool prop;
}

val aws_directory_service_radius_settings :
  ?id:string prop ->
  ?use_same_username:bool prop ->
  ?timeouts:aws_directory_service_radius_settings__timeouts ->
  authentication_protocol:string prop ->
  directory_id:string prop ->
  display_label:string prop ->
  radius_port:float prop ->
  radius_retries:float prop ->
  radius_servers:string prop list ->
  radius_timeout:float prop ->
  shared_secret:string prop ->
  string ->
  t
