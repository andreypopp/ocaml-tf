(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgenetwork_subnet__timeouts
type google_edgenetwork_subnet

val google_edgenetwork_subnet :
  ?description:string ->
  ?ipv4_cidr:string list ->
  ?ipv6_cidr:string list ->
  ?labels:(string * string) list ->
  ?timeouts:google_edgenetwork_subnet__timeouts ->
  location:string ->
  network:string ->
  subnet_id:string ->
  zone:string ->
  string ->
  unit
