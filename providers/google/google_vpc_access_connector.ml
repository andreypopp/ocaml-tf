(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type subnet = {
  name : string prop option; [@option]
  project_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : subnet) -> ()

let yojson_of_subnet =
  (function
   | { name = v_name; project_id = v_project_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : subnet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_subnet

[@@@deriving.end]

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

type google_vpc_access_connector = {
  id : string prop option; [@option]
  ip_cidr_range : string prop option; [@option]
  machine_type : string prop option; [@option]
  max_instances : float prop option; [@option]
  max_throughput : float prop option; [@option]
  min_instances : float prop option; [@option]
  min_throughput : float prop option; [@option]
  name : string prop;
  network : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  subnet : subnet list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vpc_access_connector) -> ()

let yojson_of_google_vpc_access_connector =
  (function
   | {
       id = v_id;
       ip_cidr_range = v_ip_cidr_range;
       machine_type = v_machine_type;
       max_instances = v_max_instances;
       max_throughput = v_max_throughput;
       min_instances = v_min_instances;
       min_throughput = v_min_throughput;
       name = v_name;
       network = v_network;
       project = v_project;
       region = v_region;
       subnet = v_subnet;
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
         if Stdlib.( = ) [] v_subnet then bnds
         else
           let arg = (yojson_of_list yojson_of_subnet) v_subnet in
           let bnd = "subnet", arg in
           bnd :: bnds
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
         match v_min_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_instances with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_instances", arg in
             bnd :: bnds
       in
       let bnds =
         match v_machine_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "machine_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_cidr_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_cidr_range", arg in
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
       `Assoc bnds
    : google_vpc_access_connector ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vpc_access_connector

[@@@deriving.end]

let subnet ?name ?project_id () : subnet = { name; project_id }
let timeouts ?create ?delete () : timeouts = { create; delete }

let google_vpc_access_connector ?id ?ip_cidr_range ?machine_type
    ?max_instances ?max_throughput ?min_instances ?min_throughput
    ?network ?project ?region ?(subnet = []) ?timeouts ~name () :
    google_vpc_access_connector =
  {
    id;
    ip_cidr_range;
    machine_type;
    max_instances;
    max_throughput;
    min_instances;
    min_throughput;
    name;
    network;
    project;
    region;
    subnet;
    timeouts;
  }

type t = {
  tf_name : string;
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
}

let make ?id ?ip_cidr_range ?machine_type ?max_instances
    ?max_throughput ?min_instances ?min_throughput ?network ?project
    ?region ?(subnet = []) ?timeouts ~name __id =
  let __type = "google_vpc_access_connector" in
  let __attrs =
    ({
       tf_name = __id;
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vpc_access_connector
        (google_vpc_access_connector ?id ?ip_cidr_range ?machine_type
           ?max_instances ?max_throughput ?min_instances
           ?min_throughput ?network ?project ?region ~subnet
           ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_cidr_range ?machine_type
    ?max_instances ?max_throughput ?min_instances ?min_throughput
    ?network ?project ?region ?(subnet = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_cidr_range ?machine_type ?max_instances
      ?max_throughput ?min_instances ?min_throughput ?network
      ?project ?region ~subnet ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
