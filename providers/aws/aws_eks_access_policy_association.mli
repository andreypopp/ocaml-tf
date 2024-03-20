(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_scope

val access_scope :
  ?namespaces:string prop list ->
  type_:string prop ->
  unit ->
  access_scope

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_eks_access_policy_association

val aws_eks_access_policy_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  policy_arn:string prop ->
  principal_arn:string prop ->
  access_scope:access_scope list ->
  unit ->
  aws_eks_access_policy_association

val yojson_of_aws_eks_access_policy_association :
  aws_eks_access_policy_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  associated_at : string prop;
  cluster_name : string prop;
  id : string prop;
  modified_at : string prop;
  policy_arn : string prop;
  principal_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  policy_arn:string prop ->
  principal_arn:string prop ->
  access_scope:access_scope list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  policy_arn:string prop ->
  principal_arn:string prop ->
  access_scope:access_scope list ->
  string ->
  t Tf_core.resource
