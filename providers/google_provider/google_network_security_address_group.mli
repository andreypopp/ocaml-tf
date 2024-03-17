(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_network_security_address_group__timeouts
type google_network_security_address_group

val google_network_security_address_group :
  ?description:string prop ->
  ?id:string prop ->
  ?items:string prop list ->
  ?labels:(string * string prop) list ->
  ?parent:string prop ->
  ?timeouts:google_network_security_address_group__timeouts ->
  capacity:float prop ->
  location:string prop ->
  name:string prop ->
  type_:string prop ->
  string ->
  unit
