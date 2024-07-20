(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type management_cluster__node_type_configs = {
  custom_core_count : float prop option; [@option]
  node_count : float prop;
  node_type_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_cluster__node_type_configs) -> ()

let yojson_of_management_cluster__node_type_configs =
  (function
   | {
       custom_core_count = v_custom_core_count;
       node_count = v_node_count;
       node_type_id = v_node_type_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type_id in
         ("node_type_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_node_count in
         ("node_count", arg) :: bnds
       in
       let bnds =
         match v_custom_core_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "custom_core_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : management_cluster__node_type_configs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management_cluster__node_type_configs

[@@@deriving.end]

type management_cluster__stretched_cluster_config = {
  preferred_location : string prop option; [@option]
  secondary_location : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_cluster__stretched_cluster_config) -> ()

let yojson_of_management_cluster__stretched_cluster_config =
  (function
   | {
       preferred_location = v_preferred_location;
       secondary_location = v_secondary_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secondary_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secondary_location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_location", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : management_cluster__stretched_cluster_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management_cluster__stretched_cluster_config

[@@@deriving.end]

type management_cluster = {
  cluster_id : string prop;
  node_type_configs : management_cluster__node_type_configs list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  stretched_cluster_config :
    management_cluster__stretched_cluster_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : management_cluster) -> ()

let yojson_of_management_cluster =
  (function
   | {
       cluster_id = v_cluster_id;
       node_type_configs = v_node_type_configs;
       stretched_cluster_config = v_stretched_cluster_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_stretched_cluster_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_management_cluster__stretched_cluster_config)
               v_stretched_cluster_config
           in
           let bnd = "stretched_cluster_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_node_type_configs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_management_cluster__node_type_configs)
               v_node_type_configs
           in
           let bnd = "node_type_configs", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : management_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management_cluster

[@@@deriving.end]

type network_config = {
  management_cidr : string prop;
  vmware_engine_network : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | {
       management_cidr = v_management_cidr;
       vmware_engine_network = v_vmware_engine_network;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vmware_engine_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vmware_engine_network", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_management_cidr
         in
         ("management_cidr", arg) :: bnds
       in
       `Assoc bnds
    : network_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config

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

type hcx = {
  fqdn : string prop;
  internal_ip : string prop;
  state : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcx) -> ()

let yojson_of_hcx =
  (function
   | {
       fqdn = v_fqdn;
       internal_ip = v_internal_ip;
       state = v_state;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_internal_ip in
         ("internal_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       `Assoc bnds
    : hcx -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcx

[@@@deriving.end]

type nsx = {
  fqdn : string prop;
  internal_ip : string prop;
  state : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nsx) -> ()

let yojson_of_nsx =
  (function
   | {
       fqdn = v_fqdn;
       internal_ip = v_internal_ip;
       state = v_state;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_internal_ip in
         ("internal_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       `Assoc bnds
    : nsx -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nsx

[@@@deriving.end]

type vcenter = {
  fqdn : string prop;
  internal_ip : string prop;
  state : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vcenter) -> ()

let yojson_of_vcenter =
  (function
   | {
       fqdn = v_fqdn;
       internal_ip = v_internal_ip;
       state = v_state;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_internal_ip in
         ("internal_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_fqdn in
         ("fqdn", arg) :: bnds
       in
       `Assoc bnds
    : vcenter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vcenter

[@@@deriving.end]

type google_vmwareengine_private_cloud = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  management_cluster : management_cluster list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_config : network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_private_cloud) -> ()

let yojson_of_google_vmwareengine_private_cloud =
  (function
   | {
       description = v_description;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       type_ = v_type_;
       management_cluster = v_management_cluster;
       network_config = v_network_config;
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
         if Stdlib.( = ) [] v_network_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_config)
               v_network_config
           in
           let bnd = "network_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_management_cluster then bnds
         else
           let arg =
             (yojson_of_list yojson_of_management_cluster)
               v_management_cluster
           in
           let bnd = "management_cluster", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_vmwareengine_private_cloud ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_private_cloud

[@@@deriving.end]

let management_cluster__node_type_configs ?custom_core_count
    ~node_count ~node_type_id () :
    management_cluster__node_type_configs =
  { custom_core_count; node_count; node_type_id }

let management_cluster__stretched_cluster_config ?preferred_location
    ?secondary_location () :
    management_cluster__stretched_cluster_config =
  { preferred_location; secondary_location }

let management_cluster ?(stretched_cluster_config = []) ~cluster_id
    ~node_type_configs () : management_cluster =
  { cluster_id; node_type_configs; stretched_cluster_config }

let network_config ?vmware_engine_network ~management_cidr () :
    network_config =
  { management_cidr; vmware_engine_network }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_private_cloud ?description ?id ?project
    ?type_ ?timeouts ~location ~name ~management_cluster
    ~network_config () : google_vmwareengine_private_cloud =
  {
    description;
    id;
    location;
    name;
    project;
    type_;
    management_cluster;
    network_config;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  hcx : hcx list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  nsx : nsx list prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vcenter : vcenter list prop;
}

let make ?description ?id ?project ?type_ ?timeouts ~location ~name
    ~management_cluster ~network_config __id =
  let __type = "google_vmwareengine_private_cloud" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       hcx = Prop.computed __type __id "hcx";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       nsx = Prop.computed __type __id "nsx";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       uid = Prop.computed __type __id "uid";
       vcenter = Prop.computed __type __id "vcenter";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_private_cloud
        (google_vmwareengine_private_cloud ?description ?id ?project
           ?type_ ?timeouts ~location ~name ~management_cluster
           ~network_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?type_ ?timeouts
    ~location ~name ~management_cluster ~network_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?type_ ?timeouts ~location ~name
      ~management_cluster ~network_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
