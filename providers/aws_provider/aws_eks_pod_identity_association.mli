(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_pod_identity_association

val aws_eks_pod_identity_association :
  ?tags:(string * string) list ->
  cluster_name:string ->
  namespace:string ->
  role_arn:string ->
  service_account:string ->
  string ->
  unit
