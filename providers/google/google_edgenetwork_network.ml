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

type google_edgenetwork_network = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  mtu : float prop option; [@option]
  network_id : string prop;
  project : string prop option; [@option]
  zone : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_edgenetwork_network) -> ()

let yojson_of_google_edgenetwork_network =
  (function
   | {
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       mtu = v_mtu;
       network_id = v_network_id;
       project = v_project;
       zone = v_zone;
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
         let arg = yojson_of_prop yojson_of_string v_zone in
         ("zone", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_network_id in
         ("network_id", arg) :: bnds
       in
       let bnds =
         match v_mtu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mtu", arg in
             bnd :: bnds
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
    : google_edgenetwork_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_edgenetwork_network

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_edgenetwork_network ?description ?id ?labels ?mtu ?project
    ?timeouts ~location ~network_id ~zone () :
    google_edgenetwork_network =
  {
    description;
    id;
    labels;
    location;
    mtu;
    network_id;
    project;
    zone;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  mtu : float prop;
  name : string prop;
  network_id : string prop;
  project : string prop;
  update_time : string prop;
  zone : string prop;
}

let make ?description ?id ?labels ?mtu ?project ?timeouts ~location
    ~network_id ~zone __id =
  let __type = "google_edgenetwork_network" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       network_id = Prop.computed __type __id "network_id";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
       zone = Prop.computed __type __id "zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_edgenetwork_network
        (google_edgenetwork_network ?description ?id ?labels ?mtu
           ?project ?timeouts ~location ~network_id ~zone ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?mtu ?project
    ?timeouts ~location ~network_id ~zone __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?mtu ?project ?timeouts ~location
      ~network_id ~zone __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
