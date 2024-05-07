(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type named_port = { name : string prop; port : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : named_port) -> ()

let yojson_of_named_port =
  (function
   | { name = v_name; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : named_port -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_named_port

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

type google_compute_instance_group = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  instances : string prop list option; [@option]
  name : string prop;
  network : string prop option; [@option]
  project : string prop option; [@option]
  zone : string prop option; [@option]
  named_port : named_port list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_instance_group) -> ()

let yojson_of_google_compute_instance_group =
  (function
   | {
       description = v_description;
       id = v_id;
       instances = v_instances;
       name = v_name;
       network = v_network;
       project = v_project;
       zone = v_zone;
       named_port = v_named_port;
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
           yojson_of_list yojson_of_named_port v_named_port
         in
         ("named_port", arg) :: bnds
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
         match v_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instances", arg in
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
    : google_compute_instance_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_instance_group

[@@@deriving.end]

let named_port ~name ~port () : named_port = { name; port }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_instance_group ?description ?id ?instances
    ?network ?project ?zone ?(named_port = []) ?timeouts ~name () :
    google_compute_instance_group =
  {
    description;
    id;
    instances;
    name;
    network;
    project;
    zone;
    named_port;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  instances : string list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  self_link : string prop;
  size : float prop;
  zone : string prop;
}

let make ?description ?id ?instances ?network ?project ?zone
    ?(named_port = []) ?timeouts ~name __id =
  let __type = "google_compute_instance_group" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instances = Prop.computed __type __id "instances";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       size = Prop.computed __type __id "size";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_instance_group
        (google_compute_instance_group ?description ?id ?instances
           ?network ?project ?zone ~named_port ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?instances ?network ?project
    ?zone ?(named_port = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?instances ?network ?project ?zone
      ~named_port ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
