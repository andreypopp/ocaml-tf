(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_security_address_group__timeouts
type google_network_security_address_group

val google_network_security_address_group :
  ?description:string ->
  ?id:string ->
  ?items:string list ->
  ?labels:(string * string) list ->
  ?parent:string ->
  ?timeouts:google_network_security_address_group__timeouts ->
  capacity:float ->
  location:string ->
  name:string ->
  type_:string ->
  string ->
  unit
