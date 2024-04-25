(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_ip = { enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : external_ip) -> ()

let yojson_of_external_ip =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_ip

[@@@deriving.end]

type internet_access = { enabled : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : internet_access) -> ()

let yojson_of_internet_access =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : internet_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_internet_access

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

type google_vmwareengine_network_policy = {
  description : string prop option; [@option]
  edge_services_cidr : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  vmware_engine_network : string prop;
  external_ip : external_ip list;
  internet_access : internet_access list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_network_policy) -> ()

let yojson_of_google_vmwareengine_network_policy =
  (function
   | {
       description = v_description;
       edge_services_cidr = v_edge_services_cidr;
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
       vmware_engine_network = v_vmware_engine_network;
       external_ip = v_external_ip;
       internet_access = v_internet_access;
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
           yojson_of_list yojson_of_internet_access v_internet_access
         in
         ("internet_access", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_external_ip v_external_ip
         in
         ("external_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_vmware_engine_network
         in
         ("vmware_engine_network", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_edge_services_cidr
         in
         ("edge_services_cidr", arg) :: bnds
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
    : google_vmwareengine_network_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_network_policy

[@@@deriving.end]

let external_ip ?enabled () : external_ip = { enabled }
let internet_access ?enabled () : internet_access = { enabled }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vmwareengine_network_policy ?description ?id ?project
    ?(external_ip = []) ?(internet_access = []) ?timeouts
    ~edge_services_cidr ~location ~name ~vmware_engine_network () :
    google_vmwareengine_network_policy =
  {
    description;
    edge_services_cidr;
    id;
    location;
    name;
    project;
    vmware_engine_network;
    external_ip;
    internet_access;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  edge_services_cidr : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  uid : string prop;
  update_time : string prop;
  vmware_engine_network : string prop;
  vmware_engine_network_canonical : string prop;
}

let make ?description ?id ?project ?(external_ip = [])
    ?(internet_access = []) ?timeouts ~edge_services_cidr ~location
    ~name ~vmware_engine_network __id =
  let __type = "google_vmwareengine_network_policy" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       edge_services_cidr =
         Prop.computed __type __id "edge_services_cidr";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
       vmware_engine_network =
         Prop.computed __type __id "vmware_engine_network";
       vmware_engine_network_canonical =
         Prop.computed __type __id "vmware_engine_network_canonical";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vmwareengine_network_policy
        (google_vmwareengine_network_policy ?description ?id ?project
           ~external_ip ~internet_access ?timeouts
           ~edge_services_cidr ~location ~name ~vmware_engine_network
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?(external_ip = [])
    ?(internet_access = []) ?timeouts ~edge_services_cidr ~location
    ~name ~vmware_engine_network __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ~external_ip ~internet_access
      ?timeouts ~edge_services_cidr ~location ~name
      ~vmware_engine_network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
