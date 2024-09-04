(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type autoscaling = {
  max_node_count : float prop;
  min_node_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : autoscaling) -> ()

let yojson_of_autoscaling =
  (function
   | {
       max_node_count = v_max_node_count;
       min_node_count = v_min_node_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_node_count in
         ("min_node_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_node_count in
         ("max_node_count", arg) :: bnds
       in
       `Assoc bnds
    : autoscaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_autoscaling

[@@@deriving.end]

type config__proxy_config = {
  resource_group_id : string prop;
  secret_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__proxy_config) -> ()

let yojson_of_config__proxy_config =
  (function
   | {
       resource_group_id = v_resource_group_id;
       secret_id = v_secret_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_id in
         ("secret_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_id
         in
         ("resource_group_id", arg) :: bnds
       in
       `Assoc bnds
    : config__proxy_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__proxy_config

[@@@deriving.end]

type config__root_volume = { size_gib : float prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : config__root_volume) -> ()

let yojson_of_config__root_volume =
  (function
   | { size_gib = v_size_gib } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_size_gib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "size_gib", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__root_volume -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__root_volume

[@@@deriving.end]

type config__ssh_config = { authorized_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : config__ssh_config) -> ()

let yojson_of_config__ssh_config =
  (function
   | { authorized_key = v_authorized_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authorized_key
         in
         ("authorized_key", arg) :: bnds
       in
       `Assoc bnds
    : config__ssh_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__ssh_config

[@@@deriving.end]

type config = {
  labels : string prop Tf_core.assoc option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  vm_size : string prop option; [@option]
  proxy_config : config__proxy_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  root_volume : config__root_volume list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssh_config : config__ssh_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       labels = v_labels;
       tags = v_tags;
       vm_size = v_vm_size;
       proxy_config = v_proxy_config;
       root_volume = v_root_volume;
       ssh_config = v_ssh_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssh_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__ssh_config)
               v_ssh_config
           in
           let bnd = "ssh_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_root_volume then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__root_volume)
               v_root_volume
           in
           let bnd = "root_volume", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_proxy_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_config__proxy_config)
               v_proxy_config
           in
           let bnd = "proxy_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vm_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vm_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type management = { auto_repair : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : management) -> ()

let yojson_of_management =
  (function
   | { auto_repair = v_auto_repair } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_auto_repair with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_repair", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : management -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_management

[@@@deriving.end]

type max_pods_constraint = { max_pods_per_node : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : max_pods_constraint) -> ()

let yojson_of_max_pods_constraint =
  (function
   | { max_pods_per_node = v_max_pods_per_node } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_pods_per_node
         in
         ("max_pods_per_node", arg) :: bnds
       in
       `Assoc bnds
    : max_pods_constraint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_max_pods_constraint

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

type google_container_azure_node_pool = {
  annotations : string prop Tf_core.assoc option; [@option]
  azure_availability_zone : string prop option; [@option]
  cluster : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  subnet_id : string prop;
  version : string prop;
  autoscaling : autoscaling list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  config : config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  management : management list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_pods_constraint : max_pods_constraint list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_azure_node_pool) -> ()

let yojson_of_google_container_azure_node_pool =
  (function
   | {
       annotations = v_annotations;
       azure_availability_zone = v_azure_availability_zone;
       cluster = v_cluster;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       subnet_id = v_subnet_id;
       version = v_version;
       autoscaling = v_autoscaling;
       config = v_config;
       management = v_management;
       max_pods_constraint = v_max_pods_constraint;
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
         if Stdlib.( = ) [] v_max_pods_constraint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_max_pods_constraint)
               v_max_pods_constraint
           in
           let bnd = "max_pods_constraint", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_management then bnds
         else
           let arg =
             (yojson_of_list yojson_of_management) v_management
           in
           let bnd = "management", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_config then bnds
         else
           let arg = (yojson_of_list yojson_of_config) v_config in
           let bnd = "config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscaling then bnds
         else
           let arg =
             (yojson_of_list yojson_of_autoscaling) v_autoscaling
           in
           let bnd = "autoscaling", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       let bnds =
         match v_azure_availability_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "azure_availability_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_container_azure_node_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_azure_node_pool

[@@@deriving.end]

let autoscaling ~max_node_count ~min_node_count () : autoscaling =
  { max_node_count; min_node_count }

let config__proxy_config ~resource_group_id ~secret_id () :
    config__proxy_config =
  { resource_group_id; secret_id }

let config__root_volume ?size_gib () : config__root_volume =
  { size_gib }

let config__ssh_config ~authorized_key () : config__ssh_config =
  { authorized_key }

let config ?labels ?tags ?vm_size ?(proxy_config = [])
    ?(root_volume = []) ~ssh_config () : config =
  { labels; tags; vm_size; proxy_config; root_volume; ssh_config }

let management ?auto_repair () : management = { auto_repair }

let max_pods_constraint ~max_pods_per_node () : max_pods_constraint =
  { max_pods_per_node }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_container_azure_node_pool ?annotations
    ?azure_availability_zone ?id ?project ?(management = [])
    ?timeouts ~cluster ~location ~name ~subnet_id ~version
    ~autoscaling ~config ~max_pods_constraint () :
    google_container_azure_node_pool =
  {
    annotations;
    azure_availability_zone;
    cluster;
    id;
    location;
    name;
    project;
    subnet_id;
    version;
    autoscaling;
    config;
    management;
    max_pods_constraint;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : string Tf_core.assoc prop;
  azure_availability_zone : string prop;
  cluster : string prop;
  create_time : string prop;
  effective_annotations : string Tf_core.assoc prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  subnet_id : string prop;
  uid : string prop;
  update_time : string prop;
  version : string prop;
}

let make ?annotations ?azure_availability_zone ?id ?project
    ?(management = []) ?timeouts ~cluster ~location ~name ~subnet_id
    ~version ~autoscaling ~config ~max_pods_constraint __id =
  let __type = "google_container_azure_node_pool" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       azure_availability_zone =
         Prop.computed __type __id "azure_availability_zone";
       cluster = Prop.computed __type __id "cluster";
       create_time = Prop.computed __type __id "create_time";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       subnet_id = Prop.computed __type __id "subnet_id";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_azure_node_pool
        (google_container_azure_node_pool ?annotations
           ?azure_availability_zone ?id ?project ~management
           ?timeouts ~cluster ~location ~name ~subnet_id ~version
           ~autoscaling ~config ~max_pods_constraint ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?azure_availability_zone ?id
    ?project ?(management = []) ?timeouts ~cluster ~location ~name
    ~subnet_id ~version ~autoscaling ~config ~max_pods_constraint
    __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?azure_availability_zone ?id ?project
      ~management ?timeouts ~cluster ~location ~name ~subnet_id
      ~version ~autoscaling ~config ~max_pods_constraint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
