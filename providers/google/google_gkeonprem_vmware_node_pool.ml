(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type config__taints = {
  effect : string prop option; [@option]
  key : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__taints) -> ()

let yojson_of_config__taints =
  (function
   | { effect = v_effect; key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         match v_effect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "effect", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__taints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__taints

[@@@deriving.end]

type config__vsphere_config__tags = {
  category : string prop option; [@option]
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__vsphere_config__tags) -> ()

let yojson_of_config__vsphere_config__tags =
  (function
   | { category = v_category; tag = v_tag } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_category with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "category", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__vsphere_config__tags ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__vsphere_config__tags

[@@@deriving.end]

type config__vsphere_config = {
  datastore : string prop option; [@option]
  host_groups : string prop list option; [@option]
  tags : config__vsphere_config__tags list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config__vsphere_config) -> ()

let yojson_of_config__vsphere_config =
  (function
   | {
       datastore = v_datastore;
       host_groups = v_host_groups;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config__vsphere_config__tags
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         match v_host_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "host_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_datastore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "datastore", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config__vsphere_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config__vsphere_config

[@@@deriving.end]

type config = {
  boot_disk_size_gb : float prop option; [@option]
  cpus : float prop option; [@option]
  enable_load_balancer : bool prop option; [@option]
  image : string prop option; [@option]
  image_type : string prop;
  labels : (string * string prop) list option; [@option]
  memory_mb : float prop option; [@option]
  replicas : float prop option; [@option]
  taints : config__taints list;
  vsphere_config : config__vsphere_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : config) -> ()

let yojson_of_config =
  (function
   | {
       boot_disk_size_gb = v_boot_disk_size_gb;
       cpus = v_cpus;
       enable_load_balancer = v_enable_load_balancer;
       image = v_image;
       image_type = v_image_type;
       labels = v_labels;
       memory_mb = v_memory_mb;
       replicas = v_replicas;
       taints = v_taints;
       vsphere_config = v_vsphere_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config__vsphere_config
             v_vsphere_config
         in
         ("vsphere_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_config__taints v_taints
         in
         ("taints", arg) :: bnds
       in
       let bnds =
         match v_replicas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "replicas", arg in
             bnd :: bnds
       in
       let bnds =
         match v_memory_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "memory_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_type in
         ("image_type", arg) :: bnds
       in
       let bnds =
         match v_image with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_load_balancer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_load_balancer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpus with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cpus", arg in
             bnd :: bnds
       in
       let bnds =
         match v_boot_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "boot_disk_size_gb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_config

[@@@deriving.end]

type node_pool_autoscaling = {
  max_replicas : float prop;
  min_replicas : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_pool_autoscaling) -> ()

let yojson_of_node_pool_autoscaling =
  (function
   | { max_replicas = v_max_replicas; min_replicas = v_min_replicas }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_min_replicas in
         ("min_replicas", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_max_replicas in
         ("max_replicas", arg) :: bnds
       in
       `Assoc bnds
    : node_pool_autoscaling -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_pool_autoscaling

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

type status__conditions = {
  last_transition_time : string prop;
  message : string prop;
  reason : string prop;
  state : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__conditions) -> ()

let yojson_of_status__conditions =
  (function
   | {
       last_transition_time = v_last_transition_time;
       message = v_message;
       reason = v_reason;
       state = v_state;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_transition_time
         in
         ("last_transition_time", arg) :: bnds
       in
       `Assoc bnds
    : status__conditions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__conditions

[@@@deriving.end]

type status = {
  conditions : status__conditions list;
  error_message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | { conditions = v_conditions; error_message = v_error_message }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_error_message in
         ("error_message", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__conditions v_conditions
         in
         ("conditions", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type google_gkeonprem_vmware_node_pool = {
  annotations : (string * string prop) list option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  vmware_cluster : string prop;
  config : config list;
  node_pool_autoscaling : node_pool_autoscaling list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_gkeonprem_vmware_node_pool) -> ()

let yojson_of_google_gkeonprem_vmware_node_pool =
  (function
   | {
       annotations = v_annotations;
       display_name = v_display_name;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       vmware_cluster = v_vmware_cluster;
       config = v_config;
       node_pool_autoscaling = v_node_pool_autoscaling;
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
           yojson_of_list yojson_of_node_pool_autoscaling
             v_node_pool_autoscaling
         in
         ("node_pool_autoscaling", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_config v_config in
         ("config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vmware_cluster
         in
         ("vmware_cluster", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
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
    : google_gkeonprem_vmware_node_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_gkeonprem_vmware_node_pool

[@@@deriving.end]

let config__taints ?effect ~key ~value () : config__taints =
  { effect; key; value }

let config__vsphere_config__tags ?category ?tag () :
    config__vsphere_config__tags =
  { category; tag }

let config__vsphere_config ?datastore ?host_groups ~tags () :
    config__vsphere_config =
  { datastore; host_groups; tags }

let config ?boot_disk_size_gb ?cpus ?enable_load_balancer ?image
    ?labels ?memory_mb ?replicas ~image_type ~taints ~vsphere_config
    () : config =
  {
    boot_disk_size_gb;
    cpus;
    enable_load_balancer;
    image;
    image_type;
    labels;
    memory_mb;
    replicas;
    taints;
    vsphere_config;
  }

let node_pool_autoscaling ~max_replicas ~min_replicas () :
    node_pool_autoscaling =
  { max_replicas; min_replicas }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gkeonprem_vmware_node_pool ?annotations ?display_name ?id
    ?project ?timeouts ~location ~name ~vmware_cluster ~config
    ~node_pool_autoscaling () : google_gkeonprem_vmware_node_pool =
  {
    annotations;
    display_name;
    id;
    location;
    name;
    project;
    vmware_cluster;
    config;
    node_pool_autoscaling;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  effective_annotations : (string * string) list prop;
  etag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  on_prem_version : string prop;
  project : string prop;
  reconciling : bool prop;
  state : string prop;
  status : status list prop;
  uid : string prop;
  update_time : string prop;
  vmware_cluster : string prop;
}

let make ?annotations ?display_name ?id ?project ?timeouts ~location
    ~name ~vmware_cluster ~config ~node_pool_autoscaling __id =
  let __type = "google_gkeonprem_vmware_node_pool" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       display_name = Prop.computed __type __id "display_name";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       on_prem_version = Prop.computed __type __id "on_prem_version";
       project = Prop.computed __type __id "project";
       reconciling = Prop.computed __type __id "reconciling";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       vmware_cluster = Prop.computed __type __id "vmware_cluster";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gkeonprem_vmware_node_pool
        (google_gkeonprem_vmware_node_pool ?annotations ?display_name
           ?id ?project ?timeouts ~location ~name ~vmware_cluster
           ~config ~node_pool_autoscaling ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?display_name ?id ?project
    ?timeouts ~location ~name ~vmware_cluster ~config
    ~node_pool_autoscaling __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?display_name ?id ?project ?timeouts ~location
      ~name ~vmware_cluster ~config ~node_pool_autoscaling __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
