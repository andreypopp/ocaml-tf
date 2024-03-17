(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_access_policy_association__access_scope
type aws_eks_access_policy_association__timeouts
type aws_eks_access_policy_association

val aws_eks_access_policy_association :
  ?id:string prop ->
  ?timeouts:aws_eks_access_policy_association__timeouts ->
  cluster_name:string prop ->
  policy_arn:string prop ->
  principal_arn:string prop ->
  access_scope:aws_eks_access_policy_association__access_scope list ->
  string ->
  unit
