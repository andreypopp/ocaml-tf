(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type primary_ips = {
  assignee_id : float prop;  (** assignee_id *)
  assignee_type : string prop;  (** assignee_type *)
  auto_delete : bool prop;  (** auto_delete *)
  datacenter : string prop;  (** datacenter *)
  delete_protection : bool prop;  (** delete_protection *)
  id : float prop;  (** id *)
  ip_address : string prop;  (** ip_address *)
  ip_network : string prop;  (** ip_network *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type hcloud_primary_ips

val hcloud_primary_ips :
  ?id:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_primary_ips

val yojson_of_hcloud_primary_ips : hcloud_primary_ips -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  primary_ips : primary_ips list prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
