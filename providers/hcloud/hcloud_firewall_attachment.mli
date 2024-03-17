(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_firewall_attachment

type t = private {
  firewall_id : float prop;
  id : string prop;
  label_selectors : string list prop;
  server_ids : float list prop;
}

val hcloud_firewall_attachment :
  ?id:string prop ->
  ?label_selectors:string prop list ->
  ?server_ids:float prop list ->
  firewall_id:float prop ->
  string ->
  t
