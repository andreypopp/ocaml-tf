(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_cloud_ids_endpoint = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop option; [@option]
  severity : string prop;
  threat_exceptions : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_ids_endpoint) -> ()

let yojson_of_google_cloud_ids_endpoint =
  (function
   | {
       description = v_description;
       id = v_id;
       location = v_location;
       name = v_name;
       network = v_network;
       project = v_project;
       severity = v_severity;
       threat_exceptions = v_threat_exceptions;
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
         match v_threat_exceptions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "threat_exceptions", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_severity in
         ("severity", arg) :: bnds
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
    : google_cloud_ids_endpoint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_ids_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_ids_endpoint ?description ?id ?project
    ?threat_exceptions ?timeouts ~location ~name ~network ~severity
    () : google_cloud_ids_endpoint =
  {
    description;
    id;
    location;
    name;
    network;
    project;
    severity;
    threat_exceptions;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  endpoint_forwarding_rule : string prop;
  endpoint_ip : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  severity : string prop;
  threat_exceptions : string list prop;
  update_time : string prop;
}

let make ?description ?id ?project ?threat_exceptions ?timeouts
    ~location ~name ~network ~severity __id =
  let __type = "google_cloud_ids_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       endpoint_forwarding_rule =
         Prop.computed __type __id "endpoint_forwarding_rule";
       endpoint_ip = Prop.computed __type __id "endpoint_ip";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       severity = Prop.computed __type __id "severity";
       threat_exceptions =
         Prop.computed __type __id "threat_exceptions";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_ids_endpoint
        (google_cloud_ids_endpoint ?description ?id ?project
           ?threat_exceptions ?timeouts ~location ~name ~network
           ~severity ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?threat_exceptions
    ?timeouts ~location ~name ~network ~severity __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?threat_exceptions ?timeouts
      ~location ~name ~network ~severity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
