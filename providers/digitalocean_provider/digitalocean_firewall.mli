(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_firewall__inbound_rule
type digitalocean_firewall__outbound_rule

type digitalocean_firewall__pending_changes = {
  droplet_id : float prop;  (** droplet_id *)
  removing : bool prop;  (** removing *)
  status : string prop;  (** status *)
}

type digitalocean_firewall

val digitalocean_firewall :
  ?droplet_ids:float prop list ->
  ?id:string prop ->
  ?tags:string prop list ->
  name:string prop ->
  inbound_rule:digitalocean_firewall__inbound_rule list ->
  outbound_rule:digitalocean_firewall__outbound_rule list ->
  string ->
  unit
