(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appmesh_mesh__spec__egress_filter
type aws_appmesh_mesh__spec
type aws_appmesh_mesh

val aws_appmesh_mesh :
  ?tags:(string * string) list ->
  name:string ->
  spec:aws_appmesh_mesh__spec list ->
  string ->
  unit
