(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_eventarc_channel__timeouts
type google_eventarc_channel

val google_eventarc_channel :
  ?crypto_key_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?third_party_provider:string prop ->
  ?timeouts:google_eventarc_channel__timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  unit
