(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_eks_access_entry

val aws_eks_access_entry :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  principal_arn:string prop ->
  unit ->
  aws_eks_access_entry

val yojson_of_aws_eks_access_entry : aws_eks_access_entry -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_entry_arn : string prop;
  cluster_name : string prop;
  created_at : string prop;
  id : string prop;
  kubernetes_groups : string list prop;
  modified_at : string prop;
  principal_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
  user_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  principal_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  principal_arn:string prop ->
  string ->
  t Tf_core.resource
