(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type oidc

val oidc :
  ?groups_claim:string prop ->
  ?groups_prefix:string prop ->
  ?required_claims:(string * string prop) list ->
  ?username_claim:string prop ->
  ?username_prefix:string prop ->
  client_id:string prop ->
  identity_provider_config_name:string prop ->
  issuer_url:string prop ->
  unit ->
  oidc

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_eks_identity_provider_config

val aws_eks_identity_provider_config :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  oidc:oidc list ->
  unit ->
  aws_eks_identity_provider_config

val yojson_of_aws_eks_identity_provider_config :
  aws_eks_identity_provider_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  cluster_name : string prop;
  id : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  cluster_name:string prop ->
  oidc:oidc list ->
  string ->
  t
