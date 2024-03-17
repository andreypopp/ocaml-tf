(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_kmsconfig__timeouts
type google_netapp_kmsconfig

val google_netapp_kmsconfig :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_netapp_kmsconfig__timeouts ->
  crypto_key_name:string prop ->
  location:string prop ->
  name:string prop ->
  string ->
  unit
