(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_firewall_attachment

val hcloud_firewall_attachment :
  ?id:string prop ->
  ?label_selectors:string prop list ->
  ?server_ids:float prop list ->
  firewall_id:float prop ->
  string ->
  unit
