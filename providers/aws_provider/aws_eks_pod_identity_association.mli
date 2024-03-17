(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_pod_identity_association

val aws_eks_pod_identity_association :
  ?tags:(string * string prop) list ->
  cluster_name:string prop ->
  namespace:string prop ->
  role_arn:string prop ->
  service_account:string prop ->
  string ->
  unit
