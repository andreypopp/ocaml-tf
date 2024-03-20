(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_eks_addon

val aws_eks_addon :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  addon_name:string prop ->
  cluster_name:string prop ->
  unit ->
  aws_eks_addon

val yojson_of_aws_eks_addon : aws_eks_addon -> json

(** RESOURCE REGISTRATION *)

type t = private {
  addon_name : string prop;
  addon_version : string prop;
  arn : string prop;
  cluster_name : string prop;
  configuration_values : string prop;
  created_at : string prop;
  id : string prop;
  modified_at : string prop;
  service_account_role_arn : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  addon_name:string prop ->
  cluster_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  addon_name:string prop ->
  cluster_name:string prop ->
  string ->
  t Tf_core.resource
