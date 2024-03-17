(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_eks_cluster__access_config
type aws_eks_cluster__encryption_config__provider
type aws_eks_cluster__encryption_config
type aws_eks_cluster__kubernetes_network_config
type aws_eks_cluster__outpost_config__control_plane_placement
type aws_eks_cluster__outpost_config
type aws_eks_cluster__timeouts
type aws_eks_cluster__vpc_config

type aws_eks_cluster__certificate_authority = {
  data : string;  (** data *)
}
[@@deriving yojson_of]

type aws_eks_cluster__identity__oidc = {
  issuer : string;  (** issuer *)
}
[@@deriving yojson_of]

type aws_eks_cluster__identity = {
  oidc : aws_eks_cluster__identity__oidc list;  (** oidc *)
}
[@@deriving yojson_of]

type aws_eks_cluster

val aws_eks_cluster :
  ?enabled_cluster_log_types:string list ->
  ?tags:(string * string) list ->
  ?timeouts:aws_eks_cluster__timeouts ->
  name:string ->
  role_arn:string ->
  access_config:aws_eks_cluster__access_config list ->
  encryption_config:aws_eks_cluster__encryption_config list ->
  kubernetes_network_config:
    aws_eks_cluster__kubernetes_network_config list ->
  outpost_config:aws_eks_cluster__outpost_config list ->
  vpc_config:aws_eks_cluster__vpc_config list ->
  string ->
  unit
