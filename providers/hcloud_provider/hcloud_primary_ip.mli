(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_primary_ip

val hcloud_primary_ip :
  ?delete_protection:bool ->
  ?labels:(string * string) list ->
  assignee_type:string ->
  auto_delete:bool ->
  type_:string ->
  string ->
  unit
