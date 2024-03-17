(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appmesh_virtual_service__spec__provider__virtual_node
type aws_appmesh_virtual_service__spec__provider__virtual_router
type aws_appmesh_virtual_service__spec__provider
type aws_appmesh_virtual_service__spec
type aws_appmesh_virtual_service

val aws_appmesh_virtual_service :
  ?id:string ->
  ?mesh_owner:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  mesh_name:string ->
  name:string ->
  spec:aws_appmesh_virtual_service__spec list ->
  string ->
  unit
