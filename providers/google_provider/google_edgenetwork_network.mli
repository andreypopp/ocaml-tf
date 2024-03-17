(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgenetwork_network__timeouts
type google_edgenetwork_network

val google_edgenetwork_network :
  ?description:string ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?mtu:float ->
  ?project:string ->
  ?timeouts:google_edgenetwork_network__timeouts ->
  location:string ->
  network_id:string ->
  zone:string ->
  string ->
  unit
