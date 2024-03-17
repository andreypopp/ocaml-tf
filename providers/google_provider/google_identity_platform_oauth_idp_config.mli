(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_oauth_idp_config__timeouts
type google_identity_platform_oauth_idp_config

type t = private {
  client_id : string prop;
  client_secret : string prop;
  display_name : string prop;
  enabled : bool prop;
  id : string prop;
  issuer : string prop;
  name : string prop;
  project : string prop;
}

val google_identity_platform_oauth_idp_config :
  ?client_secret:string prop ->
  ?display_name:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_identity_platform_oauth_idp_config__timeouts ->
  client_id:string prop ->
  issuer:string prop ->
  name:string prop ->
  string ->
  t
