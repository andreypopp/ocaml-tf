(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination__cloud_run_service = {
  path : string prop option; [@option]
  region : string prop option; [@option]
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination__cloud_run_service) -> ()

let yojson_of_destination__cloud_run_service =
  (function
   | { path = v_path; region = v_region; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
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
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination__cloud_run_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination__cloud_run_service

[@@@deriving.end]

type destination__gke = {
  cluster : string prop;
  location : string prop;
  namespace : string prop;
  path : string prop option; [@option]
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination__gke) -> ()

let yojson_of_destination__gke =
  (function
   | {
       cluster = v_cluster;
       location = v_location;
       namespace = v_namespace;
       path = v_path;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace in
         ("namespace", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster in
         ("cluster", arg) :: bnds
       in
       `Assoc bnds
    : destination__gke -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination__gke

[@@@deriving.end]

type destination__http_endpoint = { uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : destination__http_endpoint) -> ()

let yojson_of_destination__http_endpoint =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_uri in
         ("uri", arg) :: bnds
       in
       `Assoc bnds
    : destination__http_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination__http_endpoint

[@@@deriving.end]

type destination__network_config = {
  network_attachment : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination__network_config) -> ()

let yojson_of_destination__network_config =
  (function
   | { network_attachment = v_network_attachment } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_attachment
         in
         ("network_attachment", arg) :: bnds
       in
       `Assoc bnds
    : destination__network_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination__network_config

[@@@deriving.end]

type destination = {
  workflow : string prop option; [@option]
  cloud_run_service : destination__cloud_run_service list;
  gke : destination__gke list;
  http_endpoint : destination__http_endpoint list;
  network_config : destination__network_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination) -> ()

let yojson_of_destination =
  (function
   | {
       workflow = v_workflow;
       cloud_run_service = v_cloud_run_service;
       gke = v_gke;
       http_endpoint = v_http_endpoint;
       network_config = v_network_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination__network_config
             v_network_config
         in
         ("network_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination__http_endpoint
             v_http_endpoint
         in
         ("http_endpoint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_destination__gke v_gke in
         ("gke", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination__cloud_run_service
             v_cloud_run_service
         in
         ("cloud_run_service", arg) :: bnds
       in
       let bnds =
         match v_workflow with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workflow", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination

[@@@deriving.end]

type matching_criteria = {
  attribute : string prop;
  operator : string prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : matching_criteria) -> ()

let yojson_of_matching_criteria =
  (function
   | {
       attribute = v_attribute;
       operator = v_operator;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_operator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "operator", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_attribute in
         ("attribute", arg) :: bnds
       in
       `Assoc bnds
    : matching_criteria -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_matching_criteria

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

type transport__pubsub = { topic : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : transport__pubsub) -> ()

let yojson_of_transport__pubsub =
  (function
   | { topic = v_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transport__pubsub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transport__pubsub

[@@@deriving.end]

type transport = { pubsub : transport__pubsub list }
[@@deriving_inline yojson_of]

let _ = fun (_ : transport) -> ()

let yojson_of_transport =
  (function
   | { pubsub = v_pubsub } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transport__pubsub v_pubsub
         in
         ("pubsub", arg) :: bnds
       in
       `Assoc bnds
    : transport -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transport

[@@@deriving.end]

type google_eventarc_trigger = {
  channel : string prop option; [@option]
  event_data_content_type : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  service_account : string prop option; [@option]
  destination : destination list;
  matching_criteria : matching_criteria list;
  timeouts : timeouts option;
  transport : transport list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_eventarc_trigger) -> ()

let yojson_of_google_eventarc_trigger =
  (function
   | {
       channel = v_channel;
       event_data_content_type = v_event_data_content_type;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       service_account = v_service_account;
       destination = v_destination;
       matching_criteria = v_matching_criteria;
       timeouts = v_timeouts;
       transport = v_transport;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_transport v_transport in
         ("transport", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_matching_criteria
             v_matching_criteria
         in
         ("matching_criteria", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destination v_destination
         in
         ("destination", arg) :: bnds
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
         match v_event_data_content_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_data_content_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_channel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "channel", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_eventarc_trigger -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_eventarc_trigger

[@@@deriving.end]

let destination__cloud_run_service ?path ?region ~service () :
    destination__cloud_run_service =
  { path; region; service }

let destination__gke ?path ~cluster ~location ~namespace ~service ()
    : destination__gke =
  { cluster; location; namespace; path; service }

let destination__http_endpoint ~uri () : destination__http_endpoint =
  { uri }

let destination__network_config ~network_attachment () :
    destination__network_config =
  { network_attachment }

let destination ?workflow ?(cloud_run_service = []) ?(gke = [])
    ?(http_endpoint = []) ?(network_config = []) () : destination =
  { workflow; cloud_run_service; gke; http_endpoint; network_config }

let matching_criteria ?operator ~attribute ~value () :
    matching_criteria =
  { attribute; operator; value }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let transport__pubsub ?topic () : transport__pubsub = { topic }
let transport ?(pubsub = []) () : transport = { pubsub }

let google_eventarc_trigger ?channel ?event_data_content_type ?id
    ?labels ?project ?service_account ?timeouts ?(transport = [])
    ~location ~name ~destination ~matching_criteria () :
    google_eventarc_trigger =
  {
    channel;
    event_data_content_type;
    id;
    labels;
    location;
    name;
    project;
    service_account;
    destination;
    matching_criteria;
    timeouts;
    transport;
  }

type t = {
  tf_name : string;
  channel : string prop;
  conditions : (string * string) list prop;
  create_time : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  event_data_content_type : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?channel ?event_data_content_type ?id ?labels ?project
    ?service_account ?timeouts ?(transport = []) ~location ~name
    ~destination ~matching_criteria __id =
  let __type = "google_eventarc_trigger" in
  let __attrs =
    ({
       tf_name = __id;
       channel = Prop.computed __type __id "channel";
       conditions = Prop.computed __type __id "conditions";
       create_time = Prop.computed __type __id "create_time";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       event_data_content_type =
         Prop.computed __type __id "event_data_content_type";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       service_account = Prop.computed __type __id "service_account";
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
      yojson_of_google_eventarc_trigger
        (google_eventarc_trigger ?channel ?event_data_content_type
           ?id ?labels ?project ?service_account ?timeouts ~transport
           ~location ~name ~destination ~matching_criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?channel ?event_data_content_type ?id ?labels
    ?project ?service_account ?timeouts ?(transport = []) ~location
    ~name ~destination ~matching_criteria __id =
  let (r : _ Tf_core.resource) =
    make ?channel ?event_data_content_type ?id ?labels ?project
      ?service_account ?timeouts ~transport ~location ~name
      ~destination ~matching_criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
