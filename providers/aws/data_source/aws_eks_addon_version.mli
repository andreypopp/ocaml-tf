(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_eks_addon_version

val aws_eks_addon_version :
  ?id:string prop ->
  ?most_recent:bool prop ->
  addon_name:string prop ->
  kubernetes_version:string prop ->
  unit ->
  aws_eks_addon_version

val yojson_of_aws_eks_addon_version : aws_eks_addon_version -> json

(** RESOURCE REGISTRATION *)

type t = private {
  addon_name : string prop;
  id : string prop;
  kubernetes_version : string prop;
  most_recent : bool prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?most_recent:bool prop ->
  addon_name:string prop ->
  kubernetes_version:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?most_recent:bool prop ->
  addon_name:string prop ->
  kubernetes_version:string prop ->
  string ->
  t Tf_core.resource
