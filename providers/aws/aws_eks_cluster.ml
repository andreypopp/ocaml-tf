(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_config = {
  authentication_mode : string prop option; [@option]
  bootstrap_cluster_creator_admin_permissions : bool prop option;
      [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_config) -> ()

let yojson_of_access_config =
  (function
   | {
       authentication_mode = v_authentication_mode;
       bootstrap_cluster_creator_admin_permissions =
         v_bootstrap_cluster_creator_admin_permissions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_bootstrap_cluster_creator_admin_permissions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "bootstrap_cluster_creator_admin_permissions", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_authentication_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_config

[@@@deriving.end]

type encryption_config__provider = { key_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_config__provider) -> ()

let yojson_of_encryption_config__provider =
  (function
   | { key_arn = v_key_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_arn in
         ("key_arn", arg) :: bnds
       in
       `Assoc bnds
    : encryption_config__provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_config__provider

[@@@deriving.end]

type encryption_config = {
  resources : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  provider : encryption_config__provider list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_config) -> ()

let yojson_of_encryption_config =
  (function
   | { resources = v_resources; provider = v_provider } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_provider then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_config__provider)
               v_provider
           in
           let bnd = "provider", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resources then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_resources
           in
           let bnd = "resources", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : encryption_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_config

[@@@deriving.end]

type kubernetes_network_config = {
  ip_family : string prop option; [@option]
  service_ipv4_cidr : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_network_config) -> ()

let yojson_of_kubernetes_network_config =
  (function
   | {
       ip_family = v_ip_family;
       service_ipv4_cidr = v_service_ipv4_cidr;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_service_ipv4_cidr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_ipv4_cidr", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_family with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_family", arg in
             bnd :: bnds
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
  outpost_arns : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  control_plane_placement :
    outpost_config__control_plane_placement list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outpost_config) -> ()

let yojson_of_outpost_config =
  (function
   | {
       control_plane_instance_type = v_control_plane_instance_type;
       outpost_arns = v_outpost_arns;
       control_plane_placement = v_control_plane_placement;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type vpc_config = {
  endpoint_private_access : bool prop option; [@option]
  endpoint_public_access : bool prop option; [@option]
  public_access_cidrs : string prop list option; [@option]
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       endpoint_private_access = v_endpoint_private_access;
       endpoint_public_access = v_endpoint_public_access;
       public_access_cidrs = v_public_access_cidrs;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_access_cidrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "public_access_cidrs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_public_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "endpoint_public_access", arg in
             bnd :: bnds
       in
       let bnds =
         match v_endpoint_private_access with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "endpoint_private_access", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

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

type aws_eks_cluster = {
  bootstrap_self_managed_addons : bool prop option; [@option]
  enabled_cluster_log_types : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  version : string prop option; [@option]
  access_config : access_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  encryption_config : encryption_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kubernetes_network_config : kubernetes_network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  outpost_config : outpost_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  vpc_config : vpc_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eks_cluster) -> ()

let yojson_of_aws_eks_cluster =
  (function
   | {
       bootstrap_self_managed_addons =
         v_bootstrap_self_managed_addons;
       enabled_cluster_log_types = v_enabled_cluster_log_types;
       id = v_id;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       version = v_version;
       access_config = v_access_config;
       encryption_config = v_encryption_config;
       kubernetes_network_config = v_kubernetes_network_config;
       outpost_config = v_outpost_config;
       timeouts = v_timeouts;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_vpc_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_vpc_config) v_vpc_config
           in
           let bnd = "vpc_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_outpost_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_outpost_config)
               v_outpost_config
           in
           let bnd = "outpost_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kubernetes_network_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kubernetes_network_config)
               v_kubernetes_network_config
           in
           let bnd = "kubernetes_network_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_encryption_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_config)
               v_encryption_config
           in
           let bnd = "encryption_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_access_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_config) v_access_config
           in
           let bnd = "access_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
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
       let bnds =
         match v_enabled_cluster_log_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enabled_cluster_log_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bootstrap_self_managed_addons with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bootstrap_self_managed_addons", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_eks_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eks_cluster

[@@@deriving.end]

let access_config ?authentication_mode
    ?bootstrap_cluster_creator_admin_permissions () : access_config =
  {
    authentication_mode;
    bootstrap_cluster_creator_admin_permissions;
  }

let encryption_config__provider ~key_arn () :
    encryption_config__provider =
  { key_arn }

let encryption_config ~resources ~provider () : encryption_config =
  { resources; provider }

let kubernetes_network_config ?ip_family ?service_ipv4_cidr () :
    kubernetes_network_config =
  { ip_family; service_ipv4_cidr }

let outpost_config__control_plane_placement ~group_name () :
    outpost_config__control_plane_placement =
  { group_name }

let outpost_config ?(control_plane_placement = [])
    ~control_plane_instance_type ~outpost_arns () : outpost_config =
  {
    control_plane_instance_type;
    outpost_arns;
    control_plane_placement;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_config ?endpoint_private_access ?endpoint_public_access
    ?public_access_cidrs ?security_group_ids ~subnet_ids () :
    vpc_config =
  {
    endpoint_private_access;
    endpoint_public_access;
    public_access_cidrs;
    security_group_ids;
    subnet_ids;
  }

let aws_eks_cluster ?bootstrap_self_managed_addons
    ?enabled_cluster_log_types ?id ?tags ?tags_all ?version
    ?(access_config = []) ?(encryption_config = [])
    ?(kubernetes_network_config = []) ?(outpost_config = [])
    ?timeouts ~name ~role_arn ~vpc_config () : aws_eks_cluster =
  {
    bootstrap_self_managed_addons;
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

type t = {
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let make ?bootstrap_self_managed_addons ?enabled_cluster_log_types
    ?id ?tags ?tags_all ?version ?(access_config = [])
    ?(encryption_config = []) ?(kubernetes_network_config = [])
    ?(outpost_config = []) ?timeouts ~name ~role_arn ~vpc_config __id
    =
  let __type = "aws_eks_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       bootstrap_self_managed_addons =
         Prop.computed __type __id "bootstrap_self_managed_addons";
       certificate_authority =
         Prop.computed __type __id "certificate_authority";
       cluster_id = Prop.computed __type __id "cluster_id";
       created_at = Prop.computed __type __id "created_at";
       enabled_cluster_log_types =
         Prop.computed __type __id "enabled_cluster_log_types";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       name = Prop.computed __type __id "name";
       platform_version =
         Prop.computed __type __id "platform_version";
       role_arn = Prop.computed __type __id "role_arn";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eks_cluster
        (aws_eks_cluster ?bootstrap_self_managed_addons
           ?enabled_cluster_log_types ?id ?tags ?tags_all ?version
           ~access_config ~encryption_config
           ~kubernetes_network_config ~outpost_config ?timeouts ~name
           ~role_arn ~vpc_config ());
    attrs = __attrs;
  }

let register ?tf_module ?bootstrap_self_managed_addons
    ?enabled_cluster_log_types ?id ?tags ?tags_all ?version
    ?(access_config = []) ?(encryption_config = [])
    ?(kubernetes_network_config = []) ?(outpost_config = [])
    ?timeouts ~name ~role_arn ~vpc_config __id =
  let (r : _ Tf_core.resource) =
    make ?bootstrap_self_managed_addons ?enabled_cluster_log_types
      ?id ?tags ?tags_all ?version ~access_config ~encryption_config
      ~kubernetes_network_config ~outpost_config ?timeouts ~name
      ~role_arn ~vpc_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
