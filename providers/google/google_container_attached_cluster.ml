(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authorization = {
  admin_groups : string prop list option; [@option]
  admin_users : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authorization) -> ()

let yojson_of_authorization =
  (function
   | { admin_groups = v_admin_groups; admin_users = v_admin_users }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_admin_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "admin_users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "admin_groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authorization

[@@@deriving.end]

type binary_authorization = {
  evaluation_mode : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : binary_authorization) -> ()

let yojson_of_binary_authorization =
  (function
   | { evaluation_mode = v_evaluation_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_evaluation_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "evaluation_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : binary_authorization -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_binary_authorization

[@@@deriving.end]

type fleet = { project : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : fleet) -> ()

let yojson_of_fleet =
  (function
   | { project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       `Assoc bnds
    : fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fleet

[@@@deriving.end]

type logging_config__component_config = {
  enable_components : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config__component_config) -> ()

let yojson_of_logging_config__component_config =
  (function
   | { enable_components = v_enable_components } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_components with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "enable_components", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_config__component_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config__component_config

[@@@deriving.end]

type logging_config = {
  component_config : logging_config__component_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config) -> ()

let yojson_of_logging_config =
  (function
   | { component_config = v_component_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_config__component_config
             v_component_config
         in
         ("component_config", arg) :: bnds
       in
       `Assoc bnds
    : logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config

[@@@deriving.end]

type monitoring_config__managed_prometheus_config = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_config__managed_prometheus_config) -> ()

let yojson_of_monitoring_config__managed_prometheus_config =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : monitoring_config__managed_prometheus_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config__managed_prometheus_config

[@@@deriving.end]

type monitoring_config = {
  managed_prometheus_config :
    monitoring_config__managed_prometheus_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitoring_config) -> ()

let yojson_of_monitoring_config =
  (function
   | { managed_prometheus_config = v_managed_prometheus_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_monitoring_config__managed_prometheus_config
             v_managed_prometheus_config
         in
         ("managed_prometheus_config", arg) :: bnds
       in
       `Assoc bnds
    : monitoring_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitoring_config

[@@@deriving.end]

type oidc_config = {
  issuer_url : string prop;
  jwks : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oidc_config) -> ()

let yojson_of_oidc_config =
  (function
   | { issuer_url = v_issuer_url; jwks = v_jwks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_jwks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "jwks", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer_url in
         ("issuer_url", arg) :: bnds
       in
       `Assoc bnds
    : oidc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oidc_config

[@@@deriving.end]

type proxy_config__kubernetes_secret = {
  name : string prop;
  namespace : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : proxy_config__kubernetes_secret) -> ()

let yojson_of_proxy_config__kubernetes_secret =
  (function
   | { name = v_name; namespace = v_namespace } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : proxy_config__kubernetes_secret ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_proxy_config__kubernetes_secret

[@@@deriving.end]

type proxy_config = {
  kubernetes_secret : proxy_config__kubernetes_secret list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : proxy_config) -> ()

let yojson_of_proxy_config =
  (function
   | { kubernetes_secret = v_kubernetes_secret } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_proxy_config__kubernetes_secret
             v_kubernetes_secret
         in
         ("kubernetes_secret", arg) :: bnds
       in
       `Assoc bnds
    : proxy_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_proxy_config

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

type errors = { message : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : errors) -> ()

let yojson_of_errors =
  (function
   | { message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : errors -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_errors

[@@@deriving.end]

type workload_identity_config = {
  identity_provider : string prop;
  issuer_uri : string prop;
  workload_pool : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload_identity_config) -> ()

let yojson_of_workload_identity_config =
  (function
   | {
       identity_provider = v_identity_provider;
       issuer_uri = v_issuer_uri;
       workload_pool = v_workload_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workload_pool in
         ("workload_pool", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_issuer_uri in
         ("issuer_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_identity_provider
         in
         ("identity_provider", arg) :: bnds
       in
       `Assoc bnds
    : workload_identity_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload_identity_config

[@@@deriving.end]

type google_container_attached_cluster = {
  annotations : (string * string prop) list option; [@option]
  deletion_policy : string prop option; [@option]
  description : string prop option; [@option]
  distribution : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  platform_version : string prop;
  project : string prop option; [@option]
  authorization : authorization list;
  binary_authorization : binary_authorization list;
  fleet : fleet list;
  logging_config : logging_config list;
  monitoring_config : monitoring_config list;
  oidc_config : oidc_config list;
  proxy_config : proxy_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_attached_cluster) -> ()

let yojson_of_google_container_attached_cluster =
  (function
   | {
       annotations = v_annotations;
       deletion_policy = v_deletion_policy;
       description = v_description;
       distribution = v_distribution;
       id = v_id;
       location = v_location;
       name = v_name;
       platform_version = v_platform_version;
       project = v_project;
       authorization = v_authorization;
       binary_authorization = v_binary_authorization;
       fleet = v_fleet;
       logging_config = v_logging_config;
       monitoring_config = v_monitoring_config;
       oidc_config = v_oidc_config;
       proxy_config = v_proxy_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_proxy_config v_proxy_config
         in
         ("proxy_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_oidc_config v_oidc_config
         in
         ("oidc_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_monitoring_config
             v_monitoring_config
         in
         ("monitoring_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_config v_logging_config
         in
         ("logging_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_fleet v_fleet in
         ("fleet", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_binary_authorization
             v_binary_authorization
         in
         ("binary_authorization", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authorization v_authorization
         in
         ("authorization", arg) :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_platform_version
         in
         ("platform_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_distribution in
         ("distribution", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_deletion_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deletion_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_container_attached_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_attached_cluster

[@@@deriving.end]

let authorization ?admin_groups ?admin_users () : authorization =
  { admin_groups; admin_users }

let binary_authorization ?evaluation_mode () : binary_authorization =
  { evaluation_mode }

let fleet ~project () : fleet = { project }

let logging_config__component_config ?enable_components () :
    logging_config__component_config =
  { enable_components }

let logging_config ?(component_config = []) () : logging_config =
  { component_config }

let monitoring_config__managed_prometheus_config ?enabled () :
    monitoring_config__managed_prometheus_config =
  { enabled }

let monitoring_config ?(managed_prometheus_config = []) () :
    monitoring_config =
  { managed_prometheus_config }

let oidc_config ?jwks ~issuer_url () : oidc_config =
  { issuer_url; jwks }

let proxy_config__kubernetes_secret ~name ~namespace () :
    proxy_config__kubernetes_secret =
  { name; namespace }

let proxy_config ?(kubernetes_secret = []) () : proxy_config =
  { kubernetes_secret }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_container_attached_cluster ?annotations ?deletion_policy
    ?description ?id ?project ?(authorization = [])
    ?(binary_authorization = []) ?(logging_config = [])
    ?(monitoring_config = []) ?(proxy_config = []) ?timeouts
    ~distribution ~location ~name ~platform_version ~fleet
    ~oidc_config () : google_container_attached_cluster =
  {
    annotations;
    deletion_policy;
    description;
    distribution;
    id;
    location;
    name;
    platform_version;
    project;
    authorization;
    binary_authorization;
    fleet;
    logging_config;
    monitoring_config;
    oidc_config;
    proxy_config;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  cluster_region : string prop;
  create_time : string prop;
  deletion_policy : string prop;
  description : string prop;
  distribution : string prop;
  effective_annotations : (string * string) list prop;
  errors : errors list prop;
  id : string prop;
  kubernetes_version : string prop;
  location : string prop;
  name : string prop;
  platform_version : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  uid : string prop;
  update_time : string prop;
  workload_identity_config : workload_identity_config list prop;
}

let make ?annotations ?deletion_policy ?description ?id ?project
    ?(authorization = []) ?(binary_authorization = [])
    ?(logging_config = []) ?(monitoring_config = [])
    ?(proxy_config = []) ?timeouts ~distribution ~location ~name
    ~platform_version ~fleet ~oidc_config __id =
  let __type = "google_container_attached_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       cluster_region = Prop.computed __type __id "cluster_region";
       create_time = Prop.computed __type __id "create_time";
       deletion_policy = Prop.computed __type __id "deletion_policy";
       description = Prop.computed __type __id "description";
       distribution = Prop.computed __type __id "distribution";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       errors = Prop.computed __type __id "errors";
       id = Prop.computed __type __id "id";
       kubernetes_version =
         Prop.computed __type __id "kubernetes_version";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       platform_version =
         Prop.computed __type __id "platform_version";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       workload_identity_config =
         Prop.computed __type __id "workload_identity_config";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_attached_cluster
        (google_container_attached_cluster ?annotations
           ?deletion_policy ?description ?id ?project ~authorization
           ~binary_authorization ~logging_config ~monitoring_config
           ~proxy_config ?timeouts ~distribution ~location ~name
           ~platform_version ~fleet ~oidc_config ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?deletion_policy ?description
    ?id ?project ?(authorization = []) ?(binary_authorization = [])
    ?(logging_config = []) ?(monitoring_config = [])
    ?(proxy_config = []) ?timeouts ~distribution ~location ~name
    ~platform_version ~fleet ~oidc_config __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?deletion_policy ?description ?id ?project
      ~authorization ~binary_authorization ~logging_config
      ~monitoring_config ~proxy_config ?timeouts ~distribution
      ~location ~name ~platform_version ~fleet ~oidc_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
