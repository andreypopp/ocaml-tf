(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_eventarc_google_channel_config__timeouts
type google_eventarc_google_channel_config

type t = private {
  crypto_key_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

val google_eventarc_google_channel_config :
  ?crypto_key_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_eventarc_google_channel_config__timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t
