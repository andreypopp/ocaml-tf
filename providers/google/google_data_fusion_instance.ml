(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type accelerators = {
  accelerator_type : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : accelerators) -> ()

let yojson_of_accelerators =
  (function
   | { accelerator_type = v_accelerator_type; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_accelerator_type
         in
         ("accelerator_type", arg) :: bnds
       in
       `Assoc bnds
    : accelerators -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_accelerators

[@@@deriving.end]

type crypto_key_config = { key_reference : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : crypto_key_config) -> ()

let yojson_of_crypto_key_config =
  (function
   | { key_reference = v_key_reference } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_reference in
         ("key_reference", arg) :: bnds
       in
       `Assoc bnds
    : crypto_key_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_crypto_key_config

[@@@deriving.end]

type event_publish_config = {
  enabled : bool prop;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : event_publish_config) -> ()

let yojson_of_event_publish_config =
  (function
   | { enabled = v_enabled; topic = v_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : event_publish_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_publish_config

[@@@deriving.end]

type network_config__private_service_connect_config = {
  network_attachment : string prop option; [@option]
  unreachable_cidr_block : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : network_config__private_service_connect_config) -> ()

let yojson_of_network_config__private_service_connect_config =
  (function
   | {
       network_attachment = v_network_attachment;
       unreachable_cidr_block = v_unreachable_cidr_block;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unreachable_cidr_block with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "unreachable_cidr_block", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_attachment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_attachment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : network_config__private_service_connect_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_config__private_service_connect_config

[@@@deriving.end]

type network_config = {
  connection_type : string prop option; [@option]
  ip_allocation : string prop option; [@option]
  network : string prop option; [@option]
  private_service_connect_config :
    network_config__private_service_connect_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_config) -> ()

let yojson_of_network_config =
  (function
   | {
       connection_type = v_connection_type;
       ip_allocation = v_ip_allocation;
       network = v_network;
       private_service_connect_config =
         v_private_service_connect_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_private_service_connect_config then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_network_config__private_service_connect_config)
               v_private_service_connect_config
           in
           let bnd = "private_service_connect_config", arg in
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
         match v_ip_allocation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_allocation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_type", arg in
             bnd :: bnds
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

type google_data_fusion_instance = {
  dataproc_service_account : string prop option; [@option]
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  enable_rbac : bool prop option; [@option]
  enable_stackdriver_logging : bool prop option; [@option]
  enable_stackdriver_monitoring : bool prop option; [@option]
  id : string prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  name : string prop;
  options : string prop Tf_core.assoc option; [@option]
  private_instance : bool prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  type_ : string prop; [@key "type"]
  version : string prop option; [@option]
  zone : string prop option; [@option]
  accelerators : accelerators list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  crypto_key_config : crypto_key_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  event_publish_config : event_publish_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  network_config : network_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_fusion_instance) -> ()

let yojson_of_google_data_fusion_instance =
  (function
   | {
       dataproc_service_account = v_dataproc_service_account;
       description = v_description;
       display_name = v_display_name;
       enable_rbac = v_enable_rbac;
       enable_stackdriver_logging = v_enable_stackdriver_logging;
       enable_stackdriver_monitoring =
         v_enable_stackdriver_monitoring;
       id = v_id;
       labels = v_labels;
       name = v_name;
       options = v_options;
       private_instance = v_private_instance;
       project = v_project;
       region = v_region;
       type_ = v_type_;
       version = v_version;
       zone = v_zone;
       accelerators = v_accelerators;
       crypto_key_config = v_crypto_key_config;
       event_publish_config = v_event_publish_config;
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
         if Stdlib.( = ) [] v_event_publish_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_publish_config)
               v_event_publish_config
           in
           let bnd = "event_publish_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_crypto_key_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_crypto_key_config)
               v_crypto_key_config
           in
           let bnd = "crypto_key_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_accelerators then bnds
         else
           let arg =
             (yojson_of_list yojson_of_accelerators) v_accelerators
           in
           let bnd = "accelerators", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone", arg in
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_private_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "private_instance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_options with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "options", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_stackdriver_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_stackdriver_monitoring", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_stackdriver_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_stackdriver_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_rbac with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_rbac", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dataproc_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataproc_service_account", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_data_fusion_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_fusion_instance

[@@@deriving.end]

let accelerators ~accelerator_type ~state () : accelerators =
  { accelerator_type; state }

let crypto_key_config ~key_reference () : crypto_key_config =
  { key_reference }

let event_publish_config ~enabled ~topic () : event_publish_config =
  { enabled; topic }

let network_config__private_service_connect_config
    ?network_attachment ?unreachable_cidr_block () :
    network_config__private_service_connect_config =
  { network_attachment; unreachable_cidr_block }

let network_config ?connection_type ?ip_allocation ?network
    ?(private_service_connect_config = []) () : network_config =
  {
    connection_type;
    ip_allocation;
    network;
    private_service_connect_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_fusion_instance ?dataproc_service_account
    ?description ?display_name ?enable_rbac
    ?enable_stackdriver_logging ?enable_stackdriver_monitoring ?id
    ?labels ?options ?private_instance ?project ?region ?version
    ?zone ?(accelerators = []) ?(crypto_key_config = [])
    ?(event_publish_config = []) ?(network_config = []) ?timeouts
    ~name ~type_ () : google_data_fusion_instance =
  {
    dataproc_service_account;
    description;
    display_name;
    enable_rbac;
    enable_stackdriver_logging;
    enable_stackdriver_monitoring;
    id;
    labels;
    name;
    options;
    private_instance;
    project;
    region;
    type_;
    version;
    zone;
    accelerators;
    crypto_key_config;
    event_publish_config;
    network_config;
    timeouts;
  }

type t = {
  tf_name : string;
  api_endpoint : string prop;
  create_time : string prop;
  dataproc_service_account : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  enable_rbac : bool prop;
  enable_stackdriver_logging : bool prop;
  enable_stackdriver_monitoring : bool prop;
  gcs_bucket : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  options : string Tf_core.assoc prop;
  p4_service_account : string prop;
  private_instance : bool prop;
  project : string prop;
  region : string prop;
  service_endpoint : string prop;
  state : string prop;
  state_message : string prop;
  tenant_project_id : string prop;
  terraform_labels : string Tf_core.assoc prop;
  type_ : string prop;
  update_time : string prop;
  version : string prop;
  zone : string prop;
}

let make ?dataproc_service_account ?description ?display_name
    ?enable_rbac ?enable_stackdriver_logging
    ?enable_stackdriver_monitoring ?id ?labels ?options
    ?private_instance ?project ?region ?version ?zone
    ?(accelerators = []) ?(crypto_key_config = [])
    ?(event_publish_config = []) ?(network_config = []) ?timeouts
    ~name ~type_ __id =
  let __type = "google_data_fusion_instance" in
  let __attrs =
    ({
       tf_name = __id;
       api_endpoint = Prop.computed __type __id "api_endpoint";
       create_time = Prop.computed __type __id "create_time";
       dataproc_service_account =
         Prop.computed __type __id "dataproc_service_account";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       enable_rbac = Prop.computed __type __id "enable_rbac";
       enable_stackdriver_logging =
         Prop.computed __type __id "enable_stackdriver_logging";
       enable_stackdriver_monitoring =
         Prop.computed __type __id "enable_stackdriver_monitoring";
       gcs_bucket = Prop.computed __type __id "gcs_bucket";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       options = Prop.computed __type __id "options";
       p4_service_account =
         Prop.computed __type __id "p4_service_account";
       private_instance =
         Prop.computed __type __id "private_instance";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       service_endpoint =
         Prop.computed __type __id "service_endpoint";
       state = Prop.computed __type __id "state";
       state_message = Prop.computed __type __id "state_message";
       tenant_project_id =
         Prop.computed __type __id "tenant_project_id";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
       version = Prop.computed __type __id "version";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_fusion_instance
        (google_data_fusion_instance ?dataproc_service_account
           ?description ?display_name ?enable_rbac
           ?enable_stackdriver_logging ?enable_stackdriver_monitoring
           ?id ?labels ?options ?private_instance ?project ?region
           ?version ?zone ~accelerators ~crypto_key_config
           ~event_publish_config ~network_config ?timeouts ~name
           ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?dataproc_service_account ?description
    ?display_name ?enable_rbac ?enable_stackdriver_logging
    ?enable_stackdriver_monitoring ?id ?labels ?options
    ?private_instance ?project ?region ?version ?zone
    ?(accelerators = []) ?(crypto_key_config = [])
    ?(event_publish_config = []) ?(network_config = []) ?timeouts
    ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?dataproc_service_account ?description ?display_name
      ?enable_rbac ?enable_stackdriver_logging
      ?enable_stackdriver_monitoring ?id ?labels ?options
      ?private_instance ?project ?region ?version ?zone ~accelerators
      ~crypto_key_config ~event_publish_config ~network_config
      ?timeouts ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
