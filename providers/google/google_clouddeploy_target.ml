(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type anthos_cluster = { membership : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : anthos_cluster) -> ()

let yojson_of_anthos_cluster =
  (function
   | { membership = v_membership } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_membership with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "membership", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : anthos_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_anthos_cluster

[@@@deriving.end]

type execution_configs = {
  artifact_storage : string prop option; [@option]
  execution_timeout : string prop option; [@option]
  service_account : string prop option; [@option]
  usages : string prop list;
  worker_pool : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : execution_configs) -> ()

let yojson_of_execution_configs =
  (function
   | {
       artifact_storage = v_artifact_storage;
       execution_timeout = v_execution_timeout;
       service_account = v_service_account;
       usages = v_usages;
       worker_pool = v_worker_pool;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_worker_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "worker_pool", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_usages
         in
         ("usages", arg) :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
       in
       let bnds =
         match v_execution_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "execution_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_artifact_storage with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "artifact_storage", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : execution_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_execution_configs

[@@@deriving.end]

type gke = {
  cluster : string prop option; [@option]
  internal_ip : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : gke) -> ()

let yojson_of_gke =
  (function
   | { cluster = v_cluster; internal_ip = v_internal_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_internal_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internal_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : gke -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_gke

[@@@deriving.end]

type multi_target = { target_ids : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : multi_target) -> ()

let yojson_of_multi_target =
  (function
   | { target_ids = v_target_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_target_ids
         in
         ("target_ids", arg) :: bnds
       in
       `Assoc bnds
    : multi_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multi_target

[@@@deriving.end]

type run = { location : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : run) -> ()

let yojson_of_run =
  (function
   | { location = v_location } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : run -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_run

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

type google_clouddeploy_target = {
  annotations : (string * string prop) list option; [@option]
  deploy_parameters : (string * string prop) list option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  require_approval : bool prop option; [@option]
  anthos_cluster : anthos_cluster list;
  execution_configs : execution_configs list;
  gke : gke list;
  multi_target : multi_target list;
  run : run list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_clouddeploy_target) -> ()

let yojson_of_google_clouddeploy_target =
  (function
   | {
       annotations = v_annotations;
       deploy_parameters = v_deploy_parameters;
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       require_approval = v_require_approval;
       anthos_cluster = v_anthos_cluster;
       execution_configs = v_execution_configs;
       gke = v_gke;
       multi_target = v_multi_target;
       run = v_run;
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
         let arg = yojson_of_list yojson_of_run v_run in
         ("run", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_multi_target v_multi_target
         in
         ("multi_target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_gke v_gke in
         ("gke", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_execution_configs
             v_execution_configs
         in
         ("execution_configs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_anthos_cluster v_anthos_cluster
         in
         ("anthos_cluster", arg) :: bnds
       in
       let bnds =
         match v_require_approval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_approval", arg in
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
       let bnds =
         match v_deploy_parameters with
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
             let bnd = "deploy_parameters", arg in
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
    : google_clouddeploy_target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_clouddeploy_target

[@@@deriving.end]

let anthos_cluster ?membership () : anthos_cluster = { membership }

let execution_configs ?artifact_storage ?execution_timeout
    ?service_account ?worker_pool ~usages () : execution_configs =
  {
    artifact_storage;
    execution_timeout;
    service_account;
    usages;
    worker_pool;
  }

let gke ?cluster ?internal_ip () : gke = { cluster; internal_ip }
let multi_target ~target_ids () : multi_target = { target_ids }
let run ~location () : run = { location }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_clouddeploy_target ?annotations ?deploy_parameters
    ?description ?id ?labels ?project ?require_approval ?timeouts
    ~location ~name ~anthos_cluster ~execution_configs ~gke
    ~multi_target ~run () : google_clouddeploy_target =
  {
    annotations;
    deploy_parameters;
    description;
    id;
    labels;
    location;
    name;
    project;
    require_approval;
    anthos_cluster;
    execution_configs;
    gke;
    multi_target;
    run;
    timeouts;
  }

type t = {
  annotations : (string * string) list prop;
  create_time : string prop;
  deploy_parameters : (string * string) list prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  require_approval : bool prop;
  target_id : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?deploy_parameters ?description ?id ?labels
    ?project ?require_approval ?timeouts ~location ~name
    ~anthos_cluster ~execution_configs ~gke ~multi_target ~run __id =
  let __type = "google_clouddeploy_target" in
  let __attrs =
    ({
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       deploy_parameters =
         Prop.computed __type __id "deploy_parameters";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       require_approval =
         Prop.computed __type __id "require_approval";
       target_id = Prop.computed __type __id "target_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_clouddeploy_target
        (google_clouddeploy_target ?annotations ?deploy_parameters
           ?description ?id ?labels ?project ?require_approval
           ?timeouts ~location ~name ~anthos_cluster
           ~execution_configs ~gke ~multi_target ~run ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?deploy_parameters ?description
    ?id ?labels ?project ?require_approval ?timeouts ~location ~name
    ~anthos_cluster ~execution_configs ~gke ~multi_target ~run __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?deploy_parameters ?description ?id ?labels
      ?project ?require_approval ?timeouts ~location ~name
      ~anthos_cluster ~execution_configs ~gke ~multi_target ~run __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
