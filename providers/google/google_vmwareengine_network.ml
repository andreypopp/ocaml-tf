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

type vpc_networks = {
  network : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_networks) -> ()

let yojson_of_vpc_networks =
  (function
   | { network = v_network; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
       in
       `Assoc bnds
    : vpc_networks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_networks

[@@@deriving.end]

type google_vmwareengine_network = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_network) -> ()

let yojson_of_google_vmwareengine_network =
  (function
   | {
       description = v_description;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
    : google_vmwareengine_network ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_network

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_network ?description ?id ?project ?timeouts
    ~location ~name ~type_ () : google_vmwareengine_network =
  { description; id; location; name; project; type_; timeouts }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  type_ : string prop;
  uid : string prop;
  vpc_networks : vpc_networks list prop;
}

let make ?description ?id ?project ?timeouts ~location ~name ~type_
    __id =
  let __type = "google_vmwareengine_network" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       uid = Prop.computed __type __id "uid";
       vpc_networks = Prop.computed __type __id "vpc_networks";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_network
        (google_vmwareengine_network ?description ?id ?project
           ?timeouts ~location ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts ~location
    ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~location ~name ~type_
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
