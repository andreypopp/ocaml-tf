(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_eks_node_groups

val aws_eks_node_groups :
  ?id:string prop ->
  cluster_name:string prop ->
  unit ->
  aws_eks_node_groups

val yojson_of_aws_eks_node_groups : aws_eks_node_groups -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_name : string prop;
  id : string prop;
  names : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_name:string prop ->
  string ->
  t Tf_core.resource
