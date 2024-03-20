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

type google_compute_https_health_check = {
  check_interval_sec : float prop option; [@option]
  description : string prop option; [@option]
  healthy_threshold : float prop option; [@option]
  host : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  port : float prop option; [@option]
  project : string prop option; [@option]
  request_path : string prop option; [@option]
  timeout_sec : float prop option; [@option]
  unhealthy_threshold : float prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_https_health_check) -> ()

let yojson_of_google_compute_https_health_check =
  (function
   | {
       check_interval_sec = v_check_interval_sec;
       description = v_description;
       healthy_threshold = v_healthy_threshold;
       host = v_host;
       id = v_id;
       name = v_name;
       port = v_port;
       project = v_project;
       request_path = v_request_path;
       timeout_sec = v_timeout_sec;
       unhealthy_threshold = v_unhealthy_threshold;
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
         match v_unhealthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "unhealthy_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_sec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_path", arg in
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
         match v_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_healthy_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "healthy_threshold", arg in
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
         match v_check_interval_sec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "check_interval_sec", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_https_health_check ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_https_health_check

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_https_health_check ?check_interval_sec
    ?description ?healthy_threshold ?host ?id ?port ?project
    ?request_path ?timeout_sec ?unhealthy_threshold ?timeouts ~name
    () : google_compute_https_health_check =
  {
    check_interval_sec;
    description;
    healthy_threshold;
    host;
    id;
    name;
    port;
    project;
    request_path;
    timeout_sec;
    unhealthy_threshold;
    timeouts;
  }

type t = {
  check_interval_sec : float prop;
  creation_timestamp : string prop;
  description : string prop;
  healthy_threshold : float prop;
  host : string prop;
  id : string prop;
  name : string prop;
  port : float prop;
  project : string prop;
  request_path : string prop;
  self_link : string prop;
  timeout_sec : float prop;
  unhealthy_threshold : float prop;
}

let make ?check_interval_sec ?description ?healthy_threshold ?host
    ?id ?port ?project ?request_path ?timeout_sec
    ?unhealthy_threshold ?timeouts ~name __id =
  let __type = "google_compute_https_health_check" in
  let __attrs =
    ({
       check_interval_sec =
         Prop.computed __type __id "check_interval_sec";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       healthy_threshold =
         Prop.computed __type __id "healthy_threshold";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       port = Prop.computed __type __id "port";
       project = Prop.computed __type __id "project";
       request_path = Prop.computed __type __id "request_path";
       self_link = Prop.computed __type __id "self_link";
       timeout_sec = Prop.computed __type __id "timeout_sec";
       unhealthy_threshold =
         Prop.computed __type __id "unhealthy_threshold";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_https_health_check
        (google_compute_https_health_check ?check_interval_sec
           ?description ?healthy_threshold ?host ?id ?port ?project
           ?request_path ?timeout_sec ?unhealthy_threshold ?timeouts
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?check_interval_sec ?description
    ?healthy_threshold ?host ?id ?port ?project ?request_path
    ?timeout_sec ?unhealthy_threshold ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?check_interval_sec ?description ?healthy_threshold ?host
      ?id ?port ?project ?request_path ?timeout_sec
      ?unhealthy_threshold ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
