(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_compute_global_network_endpoint_group = {
  default_port : float prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  network_endpoint_type : string prop;
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_global_network_endpoint_group) -> ()

let yojson_of_google_compute_global_network_endpoint_group =
  (function
   | {
       default_port = v_default_port;
       description = v_description;
       id = v_id;
       name = v_name;
       network_endpoint_type = v_network_endpoint_type;
       project = v_project;
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_network_endpoint_type
         in
         ("network_endpoint_type", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_port with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "default_port", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_global_network_endpoint_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_global_network_endpoint_group

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_global_network_endpoint_group ?default_port
    ?description ?id ?project ?timeouts ~name ~network_endpoint_type
    () : google_compute_global_network_endpoint_group =
  {
    default_port;
    description;
    id;
    name;
    network_endpoint_type;
    project;
    timeouts;
  }

type t = {
  tf_name : string;
  default_port : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  network_endpoint_type : string prop;
  project : string prop;
  self_link : string prop;
}

let make ?default_port ?description ?id ?project ?timeouts ~name
    ~network_endpoint_type __id =
  let __type = "google_compute_global_network_endpoint_group" in
  let __attrs =
    ({
       tf_name = __id;
       default_port = Prop.computed __type __id "default_port";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_endpoint_type =
         Prop.computed __type __id "network_endpoint_type";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_global_network_endpoint_group
        (google_compute_global_network_endpoint_group ?default_port
           ?description ?id ?project ?timeouts ~name
           ~network_endpoint_type ());
    attrs = __attrs;
  }

let register ?tf_module ?default_port ?description ?id ?project
    ?timeouts ~name ~network_endpoint_type __id =
  let (r : _ Tf_core.resource) =
    make ?default_port ?description ?id ?project ?timeouts ~name
      ~network_endpoint_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
