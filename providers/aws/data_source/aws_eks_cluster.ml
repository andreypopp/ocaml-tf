(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_config = { authentication_mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : access_config) -> ()

let yojson_of_access_config =
  (function
   | { authentication_mode = v_authentication_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_mode
         in
         ("authentication_mode", arg) :: bnds
       in
       `Assoc bnds
    : access_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_config

[@@@deriving.end]

type certificate_authority = { data : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : certificate_authority) -> ()

let yojson_of_certificate_authority =
  (function
   | { data = v_data } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data in
         ("data", arg) :: bnds
       in
       `Assoc bnds
    : certificate_authority -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_certificate_authority

[@@@deriving.end]

type identity__oidc = { issuer : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : identity__oidc) -> ()

let yojson_of_identity__oidc =
  (function
   | { issuer = v_issuer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer in
         ("issuer", arg) :: bnds
       in
       `Assoc bnds
    : identity__oidc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity__oidc

[@@@deriving.end]

type identity = {
  oidc : identity__oidc list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { oidc = v_oidc } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_oidc then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity__oidc) v_oidc
           in
           let bnd = "oidc", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type kubernetes_network_config = {
  ip_family : string prop;
  service_ipv4_cidr : string prop;
  service_ipv6_cidr : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_network_config) -> ()

let yojson_of_kubernetes_network_config =
  (function
   | {
       ip_family = v_ip_family;
       service_ipv4_cidr = v_service_ipv4_cidr;
       service_ipv6_cidr = v_service_ipv6_cidr;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_ipv6_cidr
         in
         ("service_ipv6_cidr", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_ipv4_cidr
         in
         ("service_ipv4_cidr", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_family in
         ("ip_family", arg) :: bnds
       in
       `Assoc bnds
    : kubernetes_network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_network_config

[@@@deriving.end]

type outpost_config__control_plane_placement = {
  group_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outpost_config__control_plane_placement) -> ()

let yojson_of_outpost_config__control_plane_placement =
  (function
   | { group_name = v_group_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       `Assoc bnds
    : outpost_config__control_plane_placement ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outpost_config__control_plane_placement

[@@@deriving.end]

type outpost_config = {
  control_plane_instance_type : string prop;
  control_plane_placement :
    outpost_config__control_plane_placement list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  outpost_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outpost_config) -> ()

let yojson_of_outpost_config =
  (function
   | {
       control_plane_instance_type = v_control_plane_instance_type;
       control_plane_placement = v_control_plane_placement;
       outpost_arns = v_outpost_arns;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_outpost_arns then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_outpost_arns
           in
           let bnd = "outpost_arns", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_control_plane_placement then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_outpost_config__control_plane_placement)
               v_control_plane_placement
           in
           let bnd = "control_plane_placement", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_control_plane_instance_type
         in
         ("control_plane_instance_type", arg) :: bnds
       in
       `Assoc bnds
    : outpost_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outpost_config

[@@@deriving.end]

type vpc_config = {
  cluster_security_group_id : string prop;
  endpoint_private_access : bool prop;
  endpoint_public_access : bool prop;
  public_access_cidrs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  security_group_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       cluster_security_group_id = v_cluster_security_group_id;
       endpoint_private_access = v_endpoint_private_access;
       endpoint_public_access = v_endpoint_public_access;
       public_access_cidrs = v_public_access_cidrs;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_security_group_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_security_group_ids
           in
           let bnd = "security_group_ids", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_public_access_cidrs then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_public_access_cidrs
           in
           let bnd = "public_access_cidrs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_endpoint_public_access
         in
         ("endpoint_public_access", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_endpoint_private_access
         in
         ("endpoint_private_access", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_cluster_security_group_id
         in
         ("cluster_security_group_id", arg) :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type aws_eks_cluster = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_cluster) -> ()

let yojson_of_aws_eks_cluster =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_eks_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_cluster

[@@@deriving.end]

let aws_eks_cluster ?id ?tags ~name () : aws_eks_cluster =
  { id; name; tags }

type t = {
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
  tags : (string * string) list prop;
  version : string prop;
  vpc_config : vpc_config list prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_eks_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       access_config = Prop.computed __type __id "access_config";
       arn = Prop.computed __type __id "arn";
       certificate_authority =
         Prop.computed __type __id "certificate_authority";
       cluster_id = Prop.computed __type __id "cluster_id";
       created_at = Prop.computed __type __id "created_at";
       enabled_cluster_log_types =
         Prop.computed __type __id "enabled_cluster_log_types";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       kubernetes_network_config =
         Prop.computed __type __id "kubernetes_network_config";
       name = Prop.computed __type __id "name";
       outpost_config = Prop.computed __type __id "outpost_config";
       platform_version =
         Prop.computed __type __id "platform_version";
       role_arn = Prop.computed __type __id "role_arn";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
       vpc_config = Prop.computed __type __id "vpc_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_cluster (aws_eks_cluster ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
