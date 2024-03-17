(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_identity_provider_config__oidc
type aws_eks_identity_provider_config__timeouts
type aws_eks_identity_provider_config

val aws_eks_identity_provider_config :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_eks_identity_provider_config__timeouts ->
  cluster_name:string prop ->
  oidc:aws_eks_identity_provider_config__oidc list ->
  string ->
  unit
