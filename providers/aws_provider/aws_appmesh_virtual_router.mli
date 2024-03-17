(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appmesh_virtual_router__spec__listener__port_mapping
type aws_appmesh_virtual_router__spec__listener
type aws_appmesh_virtual_router__spec
type aws_appmesh_virtual_router

val aws_appmesh_virtual_router :
  ?tags:(string * string) list ->
  mesh_name:string ->
  name:string ->
  spec:aws_appmesh_virtual_router__spec list ->
  string ->
  unit
