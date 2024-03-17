(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iap_client__timeouts
type google_iap_client

type t = private {
  brand : string prop;
  client_id : string prop;
  display_name : string prop;
  id : string prop;
  secret : string prop;
}

val google_iap_client :
  ?id:string prop ->
  ?timeouts:google_iap_client__timeouts ->
  brand:string prop ->
  display_name:string prop ->
  string ->
  t
