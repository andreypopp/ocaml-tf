(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type hcloud_primary_ip

val hcloud_primary_ip :
  ?assignee_id:float prop ->
  ?datacenter:string prop ->
  ?delete_protection:bool prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  assignee_type:string prop ->
  auto_delete:bool prop ->
  type_:string prop ->
  string ->
  unit
