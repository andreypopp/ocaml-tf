(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_subnet__timeouts

type google_vmwareengine_subnet__dhcp_address_ranges = {
  first_address : string;  (** first_address *)
  last_address : string;  (** last_address *)
}
[@@deriving yojson_of]

type google_vmwareengine_subnet

val google_vmwareengine_subnet :
  ?timeouts:google_vmwareengine_subnet__timeouts ->
  ip_cidr_range:string ->
  name:string ->
  parent:string ->
  string ->
  unit
