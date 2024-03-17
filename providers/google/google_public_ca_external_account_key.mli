(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_public_ca_external_account_key__timeouts
type google_public_ca_external_account_key

type t = private {
  b64_mac_key : string prop;
  id : string prop;
  key_id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
}

val google_public_ca_external_account_key :
  ?id:string prop ->
  ?location:string prop ->
  ?project:string prop ->
  ?timeouts:google_public_ca_external_account_key__timeouts ->
  string ->
  t
