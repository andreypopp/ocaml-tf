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

type google_compute_router_interface = {
  id : string prop option; [@option]
  interconnect_attachment : string prop option; [@option]
  ip_range : string prop option; [@option]
  ip_version : string prop option; [@option]
  name : string prop;
  private_ip_address : string prop option; [@option]
  project : string prop option; [@option]
  redundant_interface : string prop option; [@option]
  region : string prop option; [@option]
  router : string prop;
  subnetwork : string prop option; [@option]
  vpn_tunnel : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_router_interface) -> ()

let yojson_of_google_compute_router_interface =
  (function
   | {
       id = v_id;
       interconnect_attachment = v_interconnect_attachment;
       ip_range = v_ip_range;
       ip_version = v_ip_version;
       name = v_name;
       private_ip_address = v_private_ip_address;
       project = v_project;
       redundant_interface = v_redundant_interface;
       region = v_region;
       router = v_router;
       subnetwork = v_subnetwork;
       vpn_tunnel = v_vpn_tunnel;
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
         match v_vpn_tunnel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpn_tunnel", arg in
             bnd :: bnds
       in
       let bnds =
         match v_subnetwork with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "subnetwork", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_router in
         ("router", arg) :: bnds
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
         match v_redundant_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redundant_interface", arg in
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
         match v_private_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ip_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_range", arg in
             bnd :: bnds
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
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_router_interface ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_router_interface

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_router_interface ?id ?interconnect_attachment
    ?ip_range ?ip_version ?private_ip_address ?project
    ?redundant_interface ?region ?subnetwork ?vpn_tunnel ?timeouts
    ~name ~router () : google_compute_router_interface =
  {
    id;
    interconnect_attachment;
    ip_range;
    ip_version;
    name;
    private_ip_address;
    project;
    redundant_interface;
    region;
    router;
    subnetwork;
    vpn_tunnel;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  interconnect_attachment : string prop;
  ip_range : string prop;
  ip_version : string prop;
  name : string prop;
  private_ip_address : string prop;
  project : string prop;
  redundant_interface : string prop;
  region : string prop;
  router : string prop;
  subnetwork : string prop;
  vpn_tunnel : string prop;
}

let make ?id ?interconnect_attachment ?ip_range ?ip_version
    ?private_ip_address ?project ?redundant_interface ?region
    ?subnetwork ?vpn_tunnel ?timeouts ~name ~router __id =
  let __type = "google_compute_router_interface" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       interconnect_attachment =
         Prop.computed __type __id "interconnect_attachment";
       ip_range = Prop.computed __type __id "ip_range";
       ip_version = Prop.computed __type __id "ip_version";
       name = Prop.computed __type __id "name";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       project = Prop.computed __type __id "project";
       redundant_interface =
         Prop.computed __type __id "redundant_interface";
       region = Prop.computed __type __id "region";
       router = Prop.computed __type __id "router";
       subnetwork = Prop.computed __type __id "subnetwork";
       vpn_tunnel = Prop.computed __type __id "vpn_tunnel";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_router_interface
        (google_compute_router_interface ?id ?interconnect_attachment
           ?ip_range ?ip_version ?private_ip_address ?project
           ?redundant_interface ?region ?subnetwork ?vpn_tunnel
           ?timeouts ~name ~router ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?interconnect_attachment ?ip_range
    ?ip_version ?private_ip_address ?project ?redundant_interface
    ?region ?subnetwork ?vpn_tunnel ?timeouts ~name ~router __id =
  let (r : _ Tf_core.resource) =
    make ?id ?interconnect_attachment ?ip_range ?ip_version
      ?private_ip_address ?project ?redundant_interface ?region
      ?subnetwork ?vpn_tunnel ?timeouts ~name ~router __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
