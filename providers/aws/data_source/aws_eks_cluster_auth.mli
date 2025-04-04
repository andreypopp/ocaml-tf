(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_eks_cluster_auth

val aws_eks_cluster_auth :
  ?id:string prop -> name:string prop -> unit -> aws_eks_cluster_auth

val yojson_of_aws_eks_cluster_auth : aws_eks_cluster_auth -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  token : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
