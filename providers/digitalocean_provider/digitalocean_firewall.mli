(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type digitalocean_firewall__inbound_rule
type digitalocean_firewall__outbound_rule

type digitalocean_firewall__pending_changes = {
  droplet_id : float;  (** droplet_id *)
  removing : bool;  (** removing *)
  status : string;  (** status *)
}

type digitalocean_firewall

val digitalocean_firewall :
  ?droplet_ids:float list ->
  ?id:string ->
  ?tags:string list ->
  name:string ->
  inbound_rule:digitalocean_firewall__inbound_rule list ->
  outbound_rule:digitalocean_firewall__outbound_rule list ->
  string ->
  unit
