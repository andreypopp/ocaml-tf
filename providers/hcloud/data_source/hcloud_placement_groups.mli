(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type placement_groups = {
  id : float prop;  (** id *)
  labels : (string * string prop) list;  (** labels *)
  name : string prop;  (** name *)
  servers : float prop list;  (** servers *)
  type_ : string prop; [@key "type"]  (** type *)
}

type hcloud_placement_groups

val hcloud_placement_groups :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?with_selector:string prop ->
  unit ->
  hcloud_placement_groups

val yojson_of_hcloud_placement_groups :
  hcloud_placement_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  most_recent : bool prop;
  placement_groups : placement_groups list prop;
  with_selector : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?with_selector:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?most_recent:bool prop ->
  ?with_selector:string prop ->
  string ->
  t Tf_core.resource
