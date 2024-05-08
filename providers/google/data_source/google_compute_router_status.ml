(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type best_routes = {
  description : string prop;
  dest_range : string prop;
  name : string prop;
  network : string prop;
  next_hop_gateway : string prop;
  next_hop_ilb : string prop;
  next_hop_instance : string prop;
  next_hop_instance_zone : string prop;
  next_hop_ip : string prop;
  next_hop_network : string prop;
  next_hop_vpn_tunnel : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : best_routes) -> ()

let yojson_of_best_routes =
  (function
   | {
       description = v_description;
       dest_range = v_dest_range;
       name = v_name;
       network = v_network;
       next_hop_gateway = v_next_hop_gateway;
       next_hop_ilb = v_next_hop_ilb;
       next_hop_instance = v_next_hop_instance;
       next_hop_instance_zone = v_next_hop_instance_zone;
       next_hop_ip = v_next_hop_ip;
       next_hop_network = v_next_hop_network;
       next_hop_vpn_tunnel = v_next_hop_vpn_tunnel;
       priority = v_priority;
       project = v_project;
       self_link = v_self_link;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_vpn_tunnel
         in
         ("next_hop_vpn_tunnel", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_network
         in
         ("next_hop_network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_next_hop_ip in
         ("next_hop_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_instance_zone
         in
         ("next_hop_instance_zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_instance
         in
         ("next_hop_instance", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_next_hop_ilb in
         ("next_hop_ilb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_gateway
         in
         ("next_hop_gateway", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_dest_range in
         ("dest_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : best_routes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_best_routes

[@@@deriving.end]

type best_routes_for_router = {
  description : string prop;
  dest_range : string prop;
  name : string prop;
  network : string prop;
  next_hop_gateway : string prop;
  next_hop_ilb : string prop;
  next_hop_instance : string prop;
  next_hop_instance_zone : string prop;
  next_hop_ip : string prop;
  next_hop_network : string prop;
  next_hop_vpn_tunnel : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : best_routes_for_router) -> ()

let yojson_of_best_routes_for_router =
  (function
   | {
       description = v_description;
       dest_range = v_dest_range;
       name = v_name;
       network = v_network;
       next_hop_gateway = v_next_hop_gateway;
       next_hop_ilb = v_next_hop_ilb;
       next_hop_instance = v_next_hop_instance;
       next_hop_instance_zone = v_next_hop_instance_zone;
       next_hop_ip = v_next_hop_ip;
       next_hop_network = v_next_hop_network;
       next_hop_vpn_tunnel = v_next_hop_vpn_tunnel;
       priority = v_priority;
       project = v_project;
       self_link = v_self_link;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_tags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_tags
           in
           let bnd = "tags", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_self_link in
         ("self_link", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_vpn_tunnel
         in
         ("next_hop_vpn_tunnel", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_network
         in
         ("next_hop_network", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_next_hop_ip in
         ("next_hop_ip", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_instance_zone
         in
         ("next_hop_instance_zone", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_instance
         in
         ("next_hop_instance", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_next_hop_ilb in
         ("next_hop_ilb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_next_hop_gateway
         in
         ("next_hop_gateway", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_dest_range in
         ("dest_range", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : best_routes_for_router -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_best_routes_for_router

[@@@deriving.end]

type google_compute_router_status = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_router_status) -> ()

let yojson_of_google_compute_router_status =
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
    : google_compute_router_status ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_router_status

[@@@deriving.end]

let google_compute_router_status ?id ?project ?region ~name () :
    google_compute_router_status =
  { id; name; project; region }

type t = {
  tf_name : string;
  best_routes : best_routes list prop;
  best_routes_for_router : best_routes_for_router list prop;
  id : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
}

let make ?id ?project ?region ~name __id =
  let __type = "google_compute_router_status" in
  let __attrs =
    ({
       tf_name = __id;
       best_routes = Prop.computed __type __id "best_routes";
       best_routes_for_router =
         Prop.computed __type __id "best_routes_for_router";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_router_status
        (google_compute_router_status ?id ?project ?region ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?region ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
