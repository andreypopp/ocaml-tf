(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_eks_clusters

val aws_eks_clusters : ?id:string prop -> unit -> aws_eks_clusters
val yojson_of_aws_eks_clusters : aws_eks_clusters -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; names : string list prop }

val register : ?tf_module:tf_module -> ?id:string prop -> string -> t
val make : ?id:string prop -> string -> t Tf_core.resource
