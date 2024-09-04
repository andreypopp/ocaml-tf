(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type access_config = {
  authentication_mode : string prop;  (** authentication_mode *)
  bootstrap_cluster_creator_admin_permissions : bool prop;
      (** bootstrap_cluster_creator_admin_permissions *)
}

type certificate_authority = { data : string prop  (** data *) }
type identity__oidc = { issuer : string prop  (** issuer *) }

type identity = {
  oidc : identity__oidc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** oidc *)
}

type kubernetes_network_config = {
  ip_family : string prop;  (** ip_family *)
  service_ipv4_cidr : string prop;  (** service_ipv4_cidr *)
  service_ipv6_cidr : string prop;  (** service_ipv6_cidr *)
}

type outpost_config__control_plane_placement = {
  group_name : string prop;  (** group_name *)
}

type outpost_config = {
  control_plane_instance_type : string prop;
      (** control_plane_instance_type *)
  control_plane_placement :
    outpost_config__control_plane_placement list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** control_plane_placement *)
  outpost_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** outpost_arns *)
}

type vpc_config = {
  cluster_security_group_id : string prop;
      (** cluster_security_group_id *)
  endpoint_private_access : bool prop;
      (** endpoint_private_access *)
  endpoint_public_access : bool prop;  (** endpoint_public_access *)
  public_access_cidrs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** public_access_cidrs *)
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_group_ids *)
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** subnet_ids *)
  vpc_id : string prop;  (** vpc_id *)
}

type aws_eks_cluster

val aws_eks_cluster :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_eks_cluster

val yojson_of_aws_eks_cluster : aws_eks_cluster -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_config : access_config list prop;
  arn : string prop;
  certificate_authority : certificate_authority list prop;
  cluster_id : string prop;
  created_at : string prop;
  enabled_cluster_log_types : string list prop;
  endpoint : string prop;
  id : string prop;
  identity : identity list prop;
  kubernetes_network_config : kubernetes_network_config list prop;
  name : string prop;
  outpost_config : outpost_config list prop;
  platform_version : string prop;
  role_arn : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  version : string prop;
  vpc_config : vpc_config list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
