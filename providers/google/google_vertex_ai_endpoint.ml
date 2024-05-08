(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_spec = { kms_key_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_spec) -> ()

let yojson_of_encryption_spec =
  (function
   | { kms_key_name = v_kms_key_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_name in
         ("kms_key_name", arg) :: bnds
       in
       `Assoc bnds
    : encryption_spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_spec

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

type deployed_models__private_endpoints = {
  explain_http_uri : string prop;
  health_http_uri : string prop;
  predict_http_uri : string prop;
  service_attachment : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployed_models__private_endpoints) -> ()

let yojson_of_deployed_models__private_endpoints =
  (function
   | {
       explain_http_uri = v_explain_http_uri;
       health_http_uri = v_health_http_uri;
       predict_http_uri = v_predict_http_uri;
       service_attachment = v_service_attachment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_attachment
         in
         ("service_attachment", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_predict_http_uri
         in
         ("predict_http_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_health_http_uri
         in
         ("health_http_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_explain_http_uri
         in
         ("explain_http_uri", arg) :: bnds
       in
       `Assoc bnds
    : deployed_models__private_endpoints ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployed_models__private_endpoints

[@@@deriving.end]

type deployed_models__dedicated_resources__machine_spec = {
  accelerator_count : float prop;
  accelerator_type : string prop;
  machine_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : deployed_models__dedicated_resources__machine_spec) -> ()

let yojson_of_deployed_models__dedicated_resources__machine_spec =
  (function
   | {
       accelerator_count = v_accelerator_count;
       accelerator_type = v_accelerator_type;
       machine_type = v_machine_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_machine_type in
         ("machine_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_accelerator_type
         in
         ("accelerator_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_accelerator_count
         in
         ("accelerator_count", arg) :: bnds
       in
       `Assoc bnds
    : deployed_models__dedicated_resources__machine_spec ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployed_models__dedicated_resources__machine_spec

[@@@deriving.end]

type deployed_models__dedicated_resources__autoscaling_metric_specs = {
  metric_name : string prop;
  target : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       deployed_models__dedicated_resources__autoscaling_metric_specs) ->
  ()

let yojson_of_deployed_models__dedicated_resources__autoscaling_metric_specs
    =
  (function
   | { metric_name = v_metric_name; target = v_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_metric_name in
         ("metric_name", arg) :: bnds
       in
       `Assoc bnds
    : deployed_models__dedicated_resources__autoscaling_metric_specs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_deployed_models__dedicated_resources__autoscaling_metric_specs

[@@@deriving.end]

type deployed_models__dedicated_resources = {
  autoscaling_metric_specs :
    deployed_models__dedicated_resources__autoscaling_metric_specs
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  machine_spec :
    deployed_models__dedicated_resources__machine_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  max_replica_count : float prop;
  min_replica_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployed_models__dedicated_resources) -> ()

let yojson_of_deployed_models__dedicated_resources =
  (function
   | {
       autoscaling_metric_specs = v_autoscaling_metric_specs;
       machine_spec = v_machine_spec;
       max_replica_count = v_max_replica_count;
       min_replica_count = v_min_replica_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_replica_count
         in
         ("min_replica_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_replica_count
         in
         ("max_replica_count", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_machine_spec then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployed_models__dedicated_resources__machine_spec)
               v_machine_spec
           in
           let bnd = "machine_spec", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_autoscaling_metric_specs then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployed_models__dedicated_resources__autoscaling_metric_specs)
               v_autoscaling_metric_specs
           in
           let bnd = "autoscaling_metric_specs", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deployed_models__dedicated_resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployed_models__dedicated_resources

[@@@deriving.end]

type deployed_models__automatic_resources = {
  max_replica_count : float prop;
  min_replica_count : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployed_models__automatic_resources) -> ()

let yojson_of_deployed_models__automatic_resources =
  (function
   | {
       max_replica_count = v_max_replica_count;
       min_replica_count = v_min_replica_count;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_min_replica_count
         in
         ("min_replica_count", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_max_replica_count
         in
         ("max_replica_count", arg) :: bnds
       in
       `Assoc bnds
    : deployed_models__automatic_resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployed_models__automatic_resources

[@@@deriving.end]

type deployed_models = {
  automatic_resources : deployed_models__automatic_resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  create_time : string prop;
  dedicated_resources : deployed_models__dedicated_resources list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  display_name : string prop;
  enable_access_logging : bool prop;
  enable_container_logging : bool prop;
  id : string prop;
  model : string prop;
  model_version_id : string prop;
  private_endpoints : deployed_models__private_endpoints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  service_account : string prop;
  shared_resources : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : deployed_models) -> ()

let yojson_of_deployed_models =
  (function
   | {
       automatic_resources = v_automatic_resources;
       create_time = v_create_time;
       dedicated_resources = v_dedicated_resources;
       display_name = v_display_name;
       enable_access_logging = v_enable_access_logging;
       enable_container_logging = v_enable_container_logging;
       id = v_id;
       model = v_model;
       model_version_id = v_model_version_id;
       private_endpoints = v_private_endpoints;
       service_account = v_service_account;
       shared_resources = v_shared_resources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_shared_resources
         in
         ("shared_resources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_account
         in
         ("service_account", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_private_endpoints then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployed_models__private_endpoints)
               v_private_endpoints
           in
           let bnd = "private_endpoints", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_model_version_id
         in
         ("model_version_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model in
         ("model", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_container_logging
         in
         ("enable_container_logging", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_access_logging
         in
         ("enable_access_logging", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dedicated_resources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployed_models__dedicated_resources)
               v_dedicated_resources
           in
           let bnd = "dedicated_resources", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_automatic_resources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_deployed_models__automatic_resources)
               v_automatic_resources
           in
           let bnd = "automatic_resources", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : deployed_models -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_deployed_models

[@@@deriving.end]

type google_vertex_ai_endpoint = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  network : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  encryption_spec : encryption_spec list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vertex_ai_endpoint) -> ()

let yojson_of_google_vertex_ai_endpoint =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       network = v_network;
       project = v_project;
       region = v_region;
       encryption_spec = v_encryption_spec;
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
         if Stdlib.( = ) [] v_encryption_spec then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_spec)
               v_encryption_spec
           in
           let bnd = "encryption_spec", arg in
           bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
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
    : google_vertex_ai_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vertex_ai_endpoint

[@@@deriving.end]

let encryption_spec ~kms_key_name () : encryption_spec =
  { kms_key_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_endpoint ?description ?id ?labels ?network
    ?project ?region ?(encryption_spec = []) ?timeouts ~display_name
    ~location ~name () : google_vertex_ai_endpoint =
  {
    description;
    display_name;
    id;
    labels;
    location;
    name;
    network;
    project;
    region;
    encryption_spec;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  deployed_models : deployed_models list prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  model_deployment_monitoring_job : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?network ?project ?region
    ?(encryption_spec = []) ?timeouts ~display_name ~location ~name
    __id =
  let __type = "google_vertex_ai_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       deployed_models = Prop.computed __type __id "deployed_models";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       model_deployment_monitoring_job =
         Prop.computed __type __id "model_deployment_monitoring_job";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_endpoint
        (google_vertex_ai_endpoint ?description ?id ?labels ?network
           ?project ?region ~encryption_spec ?timeouts ~display_name
           ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?network ?project
    ?region ?(encryption_spec = []) ?timeouts ~display_name ~location
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?network ?project ?region
      ~encryption_spec ?timeouts ~display_name ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
