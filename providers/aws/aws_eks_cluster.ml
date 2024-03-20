(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_config = {
  authentication_mode : string prop option; [@option]
      (** authentication_mode *)
  bootstrap_cluster_creator_admin_permissions : bool prop option;
      [@option]
      (** bootstrap_cluster_creator_admin_permissions *)
}
[@@deriving yojson_of]
(** access_config *)

type encryption_config__provider = {
  key_arn : string prop;  (** key_arn *)
}
[@@deriving yojson_of]
(** encryption_config__provider *)

type encryption_config = {
  resources : string prop list;  (** resources *)
  provider : encryption_config__provider list;
}
[@@deriving yojson_of]
(** encryption_config *)

type kubernetes_network_config = {
  ip_family : string prop option; [@option]  (** ip_family *)
  service_ipv4_cidr : string prop option; [@option]
      (** service_ipv4_cidr *)
}
[@@deriving yojson_of]
(** kubernetes_network_config *)

type outpost_config__control_plane_placement = {
  group_name : string prop;  (** group_name *)
}
[@@deriving yojson_of]
(** outpost_config__control_plane_placement *)

type outpost_config = {
  control_plane_instance_type : string prop;
      (** control_plane_instance_type *)
  outpost_arns : string prop list;  (** outpost_arns *)
  control_plane_placement :
    outpost_config__control_plane_placement list;
}
[@@deriving yojson_of]
(** outpost_config *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type vpc_config = {
  endpoint_private_access : bool prop option; [@option]
      (** endpoint_private_access *)
  endpoint_public_access : bool prop option; [@option]
      (** endpoint_public_access *)
  public_access_cidrs : string prop list option; [@option]
      (** public_access_cidrs *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc_config *)

type certificate_authority = { data : string prop  (** data *) }
[@@deriving yojson_of]

type identity__oidc = { issuer : string prop  (** issuer *) }
[@@deriving yojson_of]

type identity = { oidc : identity__oidc list  (** oidc *) }
[@@deriving yojson_of]

type aws_eks_cluster = {
  enabled_cluster_log_types : string prop list option; [@option]
      (** enabled_cluster_log_types *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version : string prop option; [@option]  (** version *)
  access_config : access_config list;
  encryption_config : encryption_config list;
  kubernetes_network_config : kubernetes_network_config list;
  outpost_config : outpost_config list;
  timeouts : timeouts option;
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_eks_cluster *)

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

let outpost_config ~control_plane_instance_type ~outpost_arns
    ~control_plane_placement () : outpost_config =
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

let aws_eks_cluster ?enabled_cluster_log_types ?id ?tags ?tags_all
    ?version ?timeouts ~name ~role_arn ~access_config
    ~encryption_config ~kubernetes_network_config ~outpost_config
    ~vpc_config () : aws_eks_cluster =
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

type t = {
  arn : string prop;
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

let make ?enabled_cluster_log_types ?id ?tags ?tags_all ?version
    ?timeouts ~name ~role_arn ~access_config ~encryption_config
    ~kubernetes_network_config ~outpost_config ~vpc_config __id =
  let __type = "aws_eks_cluster" in
  let __attrs =
    ({
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
        (aws_eks_cluster ?enabled_cluster_log_types ?id ?tags
           ?tags_all ?version ?timeouts ~name ~role_arn
           ~access_config ~encryption_config
           ~kubernetes_network_config ~outpost_config ~vpc_config ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled_cluster_log_types ?id ?tags
    ?tags_all ?version ?timeouts ~name ~role_arn ~access_config
    ~encryption_config ~kubernetes_network_config ~outpost_config
    ~vpc_config __id =
  let (r : _ Tf_core.resource) =
    make ?enabled_cluster_log_types ?id ?tags ?tags_all ?version
      ?timeouts ~name ~role_arn ~access_config ~encryption_config
      ~kubernetes_network_config ~outpost_config ~vpc_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
