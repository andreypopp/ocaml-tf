(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_sync_authorization__timeouts
type google_apigee_sync_authorization

type t = private {
  etag : string prop;
  id : string prop;
  identities : string list prop;
  name : string prop;
}

val google_apigee_sync_authorization :
  ?id:string prop ->
  ?timeouts:google_apigee_sync_authorization__timeouts ->
  identities:string prop list ->
  name:string prop ->
  string ->
  t
