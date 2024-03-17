(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_placement_group

type t = private {
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  servers : float list prop;
  type_ : string prop;
}

val hcloud_placement_group :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  name:string prop ->
  type_:string prop ->
  string ->
  t
