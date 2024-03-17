(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_storage_hmac_key__timeouts
type google_storage_hmac_key

val google_storage_hmac_key :
  ?id:string prop ->
  ?project:string prop ->
  ?state:string prop ->
  ?timeouts:google_storage_hmac_key__timeouts ->
  service_account_email:string prop ->
  string ->
  unit
