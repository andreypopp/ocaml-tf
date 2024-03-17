(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_subnet__timeouts

type google_vmwareengine_subnet__dhcp_address_ranges = {
  first_address : string prop;  (** first_address *)
  last_address : string prop;  (** last_address *)
}

type google_vmwareengine_subnet

val google_vmwareengine_subnet :
  ?id:string prop ->
  ?timeouts:google_vmwareengine_subnet__timeouts ->
  ip_cidr_range:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  unit
