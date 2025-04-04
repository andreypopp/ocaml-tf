(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type certificate_authority = { data : string prop  (** data *) }
type identity__oidc = { issuer : string prop  (** issuer *) }

type identity = {
  oidc : identity__oidc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oidc *)
}

type access_config

val access_config :
  ?authentication_mode:string prop ->
  ?bootstrap_cluster_creator_admin_permissions:bool prop ->
  unit ->
  access_config

type encryption_config__provider

val encryption_config__provider :
  key_arn:string prop -> unit -> encryption_config__provider

type encryption_config

val encryption_config :
  resources:string prop list ->
  provider:encryption_config__provider list ->
  unit ->
  encryption_config

type kubernetes_network_config

val kubernetes_network_config :
  ?ip_family:string prop ->
  ?service_ipv4_cidr:string prop ->
  unit ->
  kubernetes_network_config

type outpost_config__control_plane_placement

val outpost_config__control_plane_placement :
  group_name:string prop ->
  unit ->
  outpost_config__control_plane_placement

type outpost_config

val outpost_config :
  ?control_plane_placement:
    outpost_config__control_plane_placement list ->
  control_plane_instance_type:string prop ->
  outpost_arns:string prop list ->
  unit ->
  outpost_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type vpc_config

val vpc_config :
  ?endpoint_private_access:bool prop ->
  ?endpoint_public_access:bool prop ->
  ?public_access_cidrs:string prop list ->
  ?security_group_ids:string prop list ->
  subnet_ids:string prop list ->
  unit ->
  vpc_config

type aws_eks_cluster

val aws_eks_cluster :
  ?bootstrap_self_managed_addons:bool prop ->
  ?enabled_cluster_log_types:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?access_config:access_config list ->
  ?encryption_config:encryption_config list ->
  ?kubernetes_network_config:kubernetes_network_config list ->
  ?outpost_config:outpost_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  vpc_config:vpc_config list ->
  unit ->
  aws_eks_cluster

val yojson_of_aws_eks_cluster : aws_eks_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  bootstrap_self_managed_addons : bool prop;
  certificate_authority : certificate_authority list prop;
  cluster_id : string prop;
  created_at : string prop;
  enabled_cluster_log_types : string list prop;
  endpoint : string prop;
  id : string prop;
  identity : identity list prop;
  name : string prop;
  platform_version : string prop;
  role_arn : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?bootstrap_self_managed_addons:bool prop ->
  ?enabled_cluster_log_types:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?access_config:access_config list ->
  ?encryption_config:encryption_config list ->
  ?kubernetes_network_config:kubernetes_network_config list ->
  ?outpost_config:outpost_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  vpc_config:vpc_config list ->
  string ->
  t

val make :
  ?bootstrap_self_managed_addons:bool prop ->
  ?enabled_cluster_log_types:string prop list ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?version:string prop ->
  ?access_config:access_config list ->
  ?encryption_config:encryption_config list ->
  ?kubernetes_network_config:kubernetes_network_config list ->
  ?outpost_config:outpost_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  role_arn:string prop ->
  vpc_config:vpc_config list ->
  string ->
  t Tf_core.resource
