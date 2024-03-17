(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_identity_provider_config__oidc
type aws_eks_identity_provider_config__timeouts
type aws_eks_identity_provider_config

val aws_eks_identity_provider_config :
  ?tags:(string * string) list ->
  ?timeouts:aws_eks_identity_provider_config__timeouts ->
  cluster_name:string ->
  oidc:aws_eks_identity_provider_config__oidc list ->
  string ->
  unit
