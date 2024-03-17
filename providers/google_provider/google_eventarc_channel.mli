(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_eventarc_channel__timeouts
type google_eventarc_channel

type t = private {
  activation_token : string prop;
  create_time : string prop;
  crypto_key_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  pubsub_topic : string prop;
  state : string prop;
  third_party_provider : string prop;
  uid : string prop;
  update_time : string prop;
}

val google_eventarc_channel :
  ?crypto_key_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?third_party_provider:string prop ->
  ?timeouts:google_eventarc_channel__timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t
