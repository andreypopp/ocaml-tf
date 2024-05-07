(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type pending_changes = {
  droplet_id : float prop;  (** droplet_id *)
  removing : bool prop;  (** removing *)
  status : string prop;  (** status *)
}

type inbound_rule

val inbound_rule :
  ?port_range:string prop ->
  ?source_addresses:string prop list ->
  ?source_droplet_ids:float prop list ->
  ?source_kubernetes_ids:string prop list ->
  ?source_load_balancer_uids:string prop list ->
  ?source_tags:string prop list ->
  protocol:string prop ->
  unit ->
  inbound_rule

type outbound_rule

val outbound_rule :
  ?destination_addresses:string prop list ->
  ?destination_droplet_ids:float prop list ->
  ?destination_kubernetes_ids:string prop list ->
  ?destination_load_balancer_uids:string prop list ->
  ?destination_tags:string prop list ->
  ?port_range:string prop ->
  protocol:string prop ->
  unit ->
  outbound_rule

type digitalocean_firewall

val digitalocean_firewall :
  ?droplet_ids:float prop list ->
  ?id:string prop ->
  ?tags:string prop list ->
  firewall_id:string prop ->
  inbound_rule:inbound_rule list ->
  outbound_rule:outbound_rule list ->
  unit ->
  digitalocean_firewall

val yojson_of_digitalocean_firewall : digitalocean_firewall -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_at : string prop;
  droplet_ids : float list prop;
  firewall_id : string prop;
  id : string prop;
  name : string prop;
  pending_changes : pending_changes list prop;
  status : string prop;
  tags : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?droplet_ids:float prop list ->
  ?id:string prop ->
  ?tags:string prop list ->
  firewall_id:string prop ->
  inbound_rule:inbound_rule list ->
  outbound_rule:outbound_rule list ->
  string ->
  t

val make :
  ?droplet_ids:float prop list ->
  ?id:string prop ->
  ?tags:string prop list ->
  firewall_id:string prop ->
  inbound_rule:inbound_rule list ->
  outbound_rule:outbound_rule list ->
  string ->
  t Tf_core.resource
