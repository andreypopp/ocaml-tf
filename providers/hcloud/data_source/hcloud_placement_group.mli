(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type hcloud_placement_group

val hcloud_placement_group :
  ?id:float prop ->
  ?labels:string prop Tf_core.assoc ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?type_:string prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_placement_group

val yojson_of_hcloud_placement_group : hcloud_placement_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : float prop;
  labels : string Tf_core.assoc prop;
  most_recent : bool prop;
  name : string prop;
  servers : float list prop;
  type_ : string prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:float prop ->
  ?labels:string prop Tf_core.assoc ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?type_:string prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:float prop ->
  ?labels:string prop Tf_core.assoc ->
  ?most_recent:bool prop ->
  ?name:string prop ->
  ?type_:string prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
