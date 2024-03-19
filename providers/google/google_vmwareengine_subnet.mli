(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type dhcp_address_ranges = {
  first_address : string prop;  (** first_address *)
  last_address : string prop;  (** last_address *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_vmwareengine_subnet

val google_vmwareengine_subnet :
  ?id:string prop ->
  ?timeouts:timeouts ->
  ip_cidr_range:string prop ->
  name:string prop ->
  parent:string prop ->
  unit ->
  google_vmwareengine_subnet

val yojson_of_google_vmwareengine_subnet :
  google_vmwareengine_subnet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  dhcp_address_ranges : dhcp_address_ranges list prop;
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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  ip_cidr_range:string prop ->
  name:string prop ->
  parent:string prop ->
  string ->
  t
