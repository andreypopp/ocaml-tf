(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_subnet__timeouts

type google_vmwareengine_subnet__dhcp_address_ranges = {
  first_address : string prop;  (** first_address *)
  last_address : string prop;  (** last_address *)
}

type google_vmwareengine_subnet

type t = private {
  create_time : string prop;
  dhcp_address_ranges :
    google_vmwareengine_subnet__dhcp_address_ranges list prop;
  gateway_id : string prop;
  gateway_ip : string prop;
  id : string prop;
  ip_cidr_range : string prop;
  name : string prop;
  parent : string prop;
  standard_config : bool prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  update_time : string prop;
  vlan_id : float prop;
}

val google_vmwareengine_subnet :
  ?id:string prop ->
  ?timeouts:google_vmwareengine_subnet__timeouts ->
  ip_cidr_range:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t
