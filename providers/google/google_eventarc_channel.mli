(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_eventarc_channel

val google_eventarc_channel :
  ?crypto_key_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?third_party_provider:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_eventarc_channel

val yojson_of_google_eventarc_channel :
  google_eventarc_channel -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?crypto_key_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?third_party_provider:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?crypto_key_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?third_party_provider:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
