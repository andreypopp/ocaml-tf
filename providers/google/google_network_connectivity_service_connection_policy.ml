(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type psc_config = {
  limit : string prop option; [@option]
  subnetworks : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : psc_config) -> ()

let yojson_of_psc_config =
  (function
   | { limit = v_limit; subnetworks = v_subnetworks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_subnetworks then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnetworks
           in
           let bnd = "subnetworks", arg in
           bnd :: bnds
       in
       let bnds =
         match v_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "limit", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : psc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_psc_config

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

type psc_connections__error_info = {
  domain : string prop;
  metadata : (string * string prop) list;
  reason : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : psc_connections__error_info) -> ()

let yojson_of_psc_connections__error_info =
  (function
   | { domain = v_domain; metadata = v_metadata; reason = v_reason }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_metadata
         in
         ("metadata", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_domain in
         ("domain", arg) :: bnds
       in
       `Assoc bnds
    : psc_connections__error_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_psc_connections__error_info

[@@@deriving.end]

type psc_connections__error = {
  code : float prop;
  details : (string * string prop) list list;
      [@default []] [@yojson_drop_default ( = )]
  message : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : psc_connections__error) -> ()

let yojson_of_psc_connections__error =
  (function
   | { code = v_code; details = v_details; message = v_message } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       let bnds =
         if [] = v_details then bnds
         else
           let arg =
             (yojson_of_list
                (yojson_of_list (function v0, v1 ->
                     let v0 = yojson_of_string v0
                     and v1 = yojson_of_prop yojson_of_string v1 in
                     `List [ v0; v1 ])))
               v_details
           in
           let bnd = "details", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_code in
         ("code", arg) :: bnds
       in
       `Assoc bnds
    : psc_connections__error -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_psc_connections__error

[@@@deriving.end]

type psc_connections = {
  consumer_address : string prop;
  consumer_forwarding_rule : string prop;
  consumer_target_project : string prop;
  error : psc_connections__error list;
      [@default []] [@yojson_drop_default ( = )]
  error_info : psc_connections__error_info list;
      [@default []] [@yojson_drop_default ( = )]
  error_type : string prop;
  gce_operation : string prop;
  psc_connection_id : string prop;
  state : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : psc_connections) -> ()

let yojson_of_psc_connections =
  (function
   | {
       consumer_address = v_consumer_address;
       consumer_forwarding_rule = v_consumer_forwarding_rule;
       consumer_target_project = v_consumer_target_project;
       error = v_error;
       error_info = v_error_info;
       error_type = v_error_type;
       gce_operation = v_gce_operation;
       psc_connection_id = v_psc_connection_id;
       state = v_state;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_psc_connection_id
         in
         ("psc_connection_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gce_operation in
         ("gce_operation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_error_type in
         ("error_type", arg) :: bnds
       in
       let bnds =
         if [] = v_error_info then bnds
         else
           let arg =
             (yojson_of_list yojson_of_psc_connections__error_info)
               v_error_info
           in
           let bnd = "error_info", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_error then bnds
         else
           let arg =
             (yojson_of_list yojson_of_psc_connections__error)
               v_error
           in
           let bnd = "error", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consumer_target_project
         in
         ("consumer_target_project", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consumer_forwarding_rule
         in
         ("consumer_forwarding_rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_consumer_address
         in
         ("consumer_address", arg) :: bnds
       in
       `Assoc bnds
    : psc_connections -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_psc_connections

[@@@deriving.end]

type google_network_connectivity_service_connection_policy = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop option; [@option]
  service_class : string prop;
  psc_config : psc_config list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_network_connectivity_service_connection_policy) ->
  ()

let yojson_of_google_network_connectivity_service_connection_policy =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       network = v_network;
       project = v_project;
       service_class = v_service_class;
       psc_config = v_psc_config;
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
         if [] = v_psc_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_psc_config) v_psc_config
           in
           let bnd = "psc_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_class in
         ("service_class", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
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
       `Assoc bnds
    : google_network_connectivity_service_connection_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_google_network_connectivity_service_connection_policy

[@@@deriving.end]

let psc_config ?limit ~subnetworks () : psc_config =
  { limit; subnetworks }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_connectivity_service_connection_policy
    ?description ?id ?labels ?project ?(psc_config = []) ?timeouts
    ~location ~name ~network ~service_class () :
    google_network_connectivity_service_connection_policy =
  {
    description;
    id;
    labels;
    location;
    name;
    network;
    project;
    service_class;
    psc_config;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  infrastructure : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  psc_connections : psc_connections list prop;
  service_class : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project ?(psc_config = [])
    ?timeouts ~location ~name ~network ~service_class __id =
  let __type =
    "google_network_connectivity_service_connection_policy"
  in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       infrastructure = Prop.computed __type __id "infrastructure";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       psc_connections = Prop.computed __type __id "psc_connections";
       service_class = Prop.computed __type __id "service_class";
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
      yojson_of_google_network_connectivity_service_connection_policy
        (google_network_connectivity_service_connection_policy
           ?description ?id ?labels ?project ~psc_config ?timeouts
           ~location ~name ~network ~service_class ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project
    ?(psc_config = []) ?timeouts ~location ~name ~network
    ~service_class __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ~psc_config ?timeouts
      ~location ~name ~network ~service_class __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
