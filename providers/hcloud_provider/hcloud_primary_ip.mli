(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_primary_ip

val hcloud_primary_ip :
  ?assignee_id:float ->
  ?datacenter:string ->
  ?delete_protection:bool ->
  ?id:string ->
  ?labels:(string * string) list ->
  ?name:string ->
  assignee_type:string ->
  auto_delete:bool ->
  type_:string ->
  string ->
  unit
