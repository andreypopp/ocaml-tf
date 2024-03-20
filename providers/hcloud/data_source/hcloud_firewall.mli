(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type apply_to

val apply_to :
  ?label_selector:string prop ->
  ?server:float prop ->
  unit ->
  apply_to

type rule

val rule :
  ?description:string prop ->
  ?destination_ips:string prop list ->
  ?port:string prop ->
  ?protocol:string prop ->
  ?source_ips:string prop list ->
  direction:string prop ->
  unit ->
  rule

type hcloud_firewall

val hcloud_firewall :
  ?id:float prop ->
  ?labels:(string * string prop) list ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  apply_to:apply_to list ->
  rule:rule list ->
  unit ->
  hcloud_firewall

val yojson_of_hcloud_firewall : hcloud_firewall -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : float prop;
  labels : (string * string) list prop;
  most_recent : bool prop;
  name : string prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?labels:(string * string prop) list ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  apply_to:apply_to list ->
  rule:rule list ->
  string ->
  t

val make :
  ?id:float prop ->
  ?labels:(string * string prop) list ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?with_selector:string prop ->
  apply_to:apply_to list ->
  rule:rule list ->
  string ->
  t Tf_core.resource
