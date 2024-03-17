(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eks_cluster__access_config = {
  authentication_mode : string option; [@option]
      (** authentication_mode *)
  bootstrap_cluster_creator_admin_permissions : bool option; [@option]
      (** bootstrap_cluster_creator_admin_permissions *)
}
[@@deriving yojson_of]
(** aws_eks_cluster__access_config *)

type aws_eks_cluster__encryption_config__provider = {
  key_arn : string;  (** key_arn *)
}
[@@deriving yojson_of]
(** aws_eks_cluster__encryption_config__provider *)

type aws_eks_cluster__encryption_config = {
  resources : string list;  (** resources *)
  provider : aws_eks_cluster__encryption_config__provider list;
}
[@@deriving yojson_of]
(** aws_eks_cluster__encryption_config *)

type aws_eks_cluster__kubernetes_network_config = {
  ip_family : string option; [@option]  (** ip_family *)
  service_ipv4_cidr : string option; [@option]
      (** service_ipv4_cidr *)
  service_ipv6_cidr : string;  (** service_ipv6_cidr *)
}
[@@deriving yojson_of]
(** aws_eks_cluster__kubernetes_network_config *)

type aws_eks_cluster__outpost_config__control_plane_placement = {
  group_name : string;  (** group_name *)
}
[@@deriving yojson_of]
(** aws_eks_cluster__outpost_config__control_plane_placement *)

type aws_eks_cluster__outpost_config = {
  control_plane_instance_type : string;
      (** control_plane_instance_type *)
  outpost_arns : string list;  (** outpost_arns *)
  control_plane_placement :
    aws_eks_cluster__outpost_config__control_plane_placement list;
}
[@@deriving yojson_of]
(** aws_eks_cluster__outpost_config *)

type aws_eks_cluster__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_eks_cluster__timeouts *)

type aws_eks_cluster__vpc_config = {
  cluster_security_group_id : string;
      (** cluster_security_group_id *)
  endpoint_private_access : bool option; [@option]
      (** endpoint_private_access *)
  endpoint_public_access : bool option; [@option]
      (** endpoint_public_access *)
  public_access_cidrs : string list option; [@option]
      (** public_access_cidrs *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
}
[@@deriving yojson_of]
(** aws_eks_cluster__vpc_config *)

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

type aws_eks_cluster = {
  enabled_cluster_log_types : string list option; [@option]
      (** enabled_cluster_log_types *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  role_arn : string;  (** role_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  version : string option; [@option]  (** version *)
  access_config : aws_eks_cluster__access_config list;
  encryption_config : aws_eks_cluster__encryption_config list;
  kubernetes_network_config :
    aws_eks_cluster__kubernetes_network_config list;
  outpost_config : aws_eks_cluster__outpost_config list;
  timeouts : aws_eks_cluster__timeouts option;
  vpc_config : aws_eks_cluster__vpc_config list;
}
[@@deriving yojson_of]
(** aws_eks_cluster *)

let aws_eks_cluster ?enabled_cluster_log_types ?id ?tags ?tags_all
    ?version ?timeouts ~name ~role_arn ~access_config
    ~encryption_config ~kubernetes_network_config ~outpost_config
    ~vpc_config __resource_id =
  let __resource_type = "aws_eks_cluster" in
  let __resource =
    {
      enabled_cluster_log_types;
      id;
      name;
      role_arn;
      tags;
      tags_all;
      version;
      access_config;
      encryption_config;
      kubernetes_network_config;
      outpost_config;
      timeouts;
      vpc_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eks_cluster __resource);
  ()
