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

type vpn_interfaces = {
  id : float prop option; [@option]
  interconnect_attachment : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpn_interfaces) -> ()

let yojson_of_vpn_interfaces =
  (function
   | {
       id = v_id;
       interconnect_attachment = v_interconnect_attachment;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_interconnect_attachment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interconnect_attachment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpn_interfaces -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpn_interfaces

[@@@deriving.end]

type google_compute_ha_vpn_gateway = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  network : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  stack_type : string prop option; [@option]
  timeouts : timeouts option;
  vpn_interfaces : vpn_interfaces list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_ha_vpn_gateway) -> ()

let yojson_of_google_compute_ha_vpn_gateway =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       network = v_network;
       project = v_project;
       region = v_region;
       stack_type = v_stack_type;
       timeouts = v_timeouts;
       vpn_interfaces = v_vpn_interfaces;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpn_interfaces v_vpn_interfaces
         in
         ("vpn_interfaces", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_stack_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "stack_type", arg in
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
         let arg = yojson_of_prop yojson_of_string v_network in
         ("network", arg) :: bnds
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
       `Assoc bnds
    : google_compute_ha_vpn_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_ha_vpn_gateway

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let vpn_interfaces ?id ?interconnect_attachment () : vpn_interfaces =
  { id; interconnect_attachment }

let google_compute_ha_vpn_gateway ?description ?id ?project ?region
    ?stack_type ?timeouts ?(vpn_interfaces = []) ~name ~network () :
    google_compute_ha_vpn_gateway =
  {
    description;
    id;
    name;
    network;
    project;
    region;
    stack_type;
    timeouts;
    vpn_interfaces;
  }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  stack_type : string prop;
}

let make ?description ?id ?project ?region ?stack_type ?timeouts
    ?(vpn_interfaces = []) ~name ~network __id =
  let __type = "google_compute_ha_vpn_gateway" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       stack_type = Prop.computed __type __id "stack_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_ha_vpn_gateway
        (google_compute_ha_vpn_gateway ?description ?id ?project
           ?region ?stack_type ?timeouts ~vpn_interfaces ~name
           ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?region ?stack_type
    ?timeouts ?(vpn_interfaces = []) ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?region ?stack_type ?timeouts
      ~vpn_interfaces ~name ~network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
