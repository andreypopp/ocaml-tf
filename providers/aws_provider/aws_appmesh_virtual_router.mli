(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appmesh_virtual_router__spec__listener__port_mapping
type aws_appmesh_virtual_router__spec__listener
type aws_appmesh_virtual_router__spec
type aws_appmesh_virtual_router

val aws_appmesh_virtual_router :
  ?id:string prop ->
  ?mesh_owner:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  mesh_name:string prop ->
  name:string prop ->
  spec:aws_appmesh_virtual_router__spec list ->
  string ->
  unit
