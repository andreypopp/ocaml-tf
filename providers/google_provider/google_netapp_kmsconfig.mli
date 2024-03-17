(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_netapp_kmsconfig__timeouts
type google_netapp_kmsconfig

val google_netapp_kmsconfig :
  ?description:string ->
  ?labels:(string * string) list ->
  ?timeouts:google_netapp_kmsconfig__timeouts ->
  crypto_key_name:string ->
  location:string ->
  name:string ->
  string ->
  unit
