(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_ip = { enabled : bool prop; state : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : external_ip) -> ()

let yojson_of_external_ip =
  (function
   | { enabled = v_enabled; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : external_ip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_ip

[@@@deriving.end]

type internet_access = { enabled : bool prop; state : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : internet_access) -> ()

let yojson_of_internet_access =
  (function
   | { enabled = v_enabled; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : internet_access -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_internet_access

[@@@deriving.end]

type google_vmwareengine_network_policy = {
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_vmwareengine_network_policy) -> ()

let yojson_of_google_vmwareengine_network_policy =
  (function
   | {
       id = v_id;
       location = v_location;
       name = v_name;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       `Assoc bnds
    : google_vmwareengine_network_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_vmwareengine_network_policy

[@@@deriving.end]

let google_vmwareengine_network_policy ?id ?project ~location ~name
    () : google_vmwareengine_network_policy =
  { id; location; name; project }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  edge_services_cidr : string prop;
  external_ip : external_ip list prop;
  id : string prop;
  internet_access : internet_access list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  uid : string prop;
  update_time : string prop;
  vmware_engine_network : string prop;
  vmware_engine_network_canonical : string prop;
}

let make ?id ?project ~location ~name __id =
  let __type = "google_vmwareengine_network_policy" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       edge_services_cidr =
         Prop.computed __type __id "edge_services_cidr";
       external_ip = Prop.computed __type __id "external_ip";
       id = Prop.computed __type __id "id";
       internet_access = Prop.computed __type __id "internet_access";
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
        (google_vmwareengine_network_policy ?id ?project ~location
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~location ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
