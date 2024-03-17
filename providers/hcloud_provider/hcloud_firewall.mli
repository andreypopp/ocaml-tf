(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_firewall__apply_to
type hcloud_firewall__rule
type hcloud_firewall

val hcloud_firewall :
  name:string ->
  apply_to:hcloud_firewall__apply_to list ->
  rule:hcloud_firewall__rule list ->
  string ->
  unit
