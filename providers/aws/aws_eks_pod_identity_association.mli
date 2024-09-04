(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_eks_pod_identity_association

val aws_eks_pod_identity_association :
  ?tags:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  namespace:string prop ->
  role_arn:string prop ->
  service_account:string prop ->
  unit ->
  aws_eks_pod_identity_association

val yojson_of_aws_eks_pod_identity_association :
  aws_eks_pod_identity_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  association_arn : string prop;
  association_id : string prop;
  cluster_name : string prop;
  id : string prop;
  namespace : string prop;
  role_arn : string prop;
  service_account : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  namespace:string prop ->
  role_arn:string prop ->
  service_account:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  cluster_name:string prop ->
  namespace:string prop ->
  role_arn:string prop ->
  service_account:string prop ->
  string ->
  t Tf_core.resource
