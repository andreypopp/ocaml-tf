(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type subnet = { name : string prop; project_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet) -> ()

let yojson_of_subnet =
  (function
   | { name = v_name; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project_id in
         ("project_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet

[@@@deriving.end]

type google_vpc_access_connector = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vpc_access_connector) -> ()

let yojson_of_google_vpc_access_connector =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : google_vpc_access_connector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vpc_access_connector

[@@@deriving.end]

let google_vpc_access_connector ?id ?project ?region ~name () :
    google_vpc_access_connector =
  { id; name; project; region }

type t = {
  connected_projects : string list prop;
  id : string prop;
  ip_cidr_range : string prop;
  machine_type : string prop;
  max_instances : float prop;
  max_throughput : float prop;
  min_instances : float prop;
  min_throughput : float prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  state : string prop;
  subnet : subnet list prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_vpc_access_connector" in
  let __attrs =
    ({
       connected_projects =
         Prop.computed __type __id "connected_projects";
       id = Prop.computed __type __id "id";
       ip_cidr_range = Prop.computed __type __id "ip_cidr_range";
       machine_type = Prop.computed __type __id "machine_type";
       max_instances = Prop.computed __type __id "max_instances";
       max_throughput = Prop.computed __type __id "max_throughput";
       min_instances = Prop.computed __type __id "min_instances";
       min_throughput = Prop.computed __type __id "min_throughput";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       state = Prop.computed __type __id "state";
       subnet = Prop.computed __type __id "subnet";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vpc_access_connector
        (google_vpc_access_connector ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
