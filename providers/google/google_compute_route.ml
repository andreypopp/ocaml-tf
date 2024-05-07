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

type google_compute_route = {
  description : string prop option; [@option]
  dest_range : string prop;
  id : string prop option; [@option]
  name : string prop;
  network : string prop;
  next_hop_gateway : string prop option; [@option]
  next_hop_ilb : string prop option; [@option]
  next_hop_instance : string prop option; [@option]
  next_hop_instance_zone : string prop option; [@option]
  next_hop_ip : string prop option; [@option]
  next_hop_vpn_tunnel : string prop option; [@option]
  priority : float prop option; [@option]
  project : string prop option; [@option]
  tags : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_route) -> ()

let yojson_of_google_compute_route =
  (function
   | {
       description = v_description;
       dest_range = v_dest_range;
       id = v_id;
       name = v_name;
       network = v_network;
       next_hop_gateway = v_next_hop_gateway;
       next_hop_ilb = v_next_hop_ilb;
       next_hop_instance = v_next_hop_instance;
       next_hop_instance_zone = v_next_hop_instance_zone;
       next_hop_ip = v_next_hop_ip;
       next_hop_vpn_tunnel = v_next_hop_vpn_tunnel;
       priority = v_priority;
       project = v_project;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_hop_vpn_tunnel with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_vpn_tunnel", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_hop_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_hop_instance_zone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_instance_zone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_hop_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_instance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_hop_ilb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_ilb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_next_hop_gateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "next_hop_gateway", arg in
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
         let arg = yojson_of_prop yojson_of_string v_dest_range in
         ("dest_range", arg) :: bnds
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
    : google_compute_route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_route

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_route ?description ?id ?next_hop_gateway
    ?next_hop_ilb ?next_hop_instance ?next_hop_instance_zone
    ?next_hop_ip ?next_hop_vpn_tunnel ?priority ?project ?tags
    ?timeouts ~dest_range ~name ~network () : google_compute_route =
  {
    description;
    dest_range;
    id;
    name;
    network;
    next_hop_gateway;
    next_hop_ilb;
    next_hop_instance;
    next_hop_instance_zone;
    next_hop_ip;
    next_hop_vpn_tunnel;
    priority;
    project;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  dest_range : string prop;
  id : string prop;
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
  tags : string list prop;
}

let make ?description ?id ?next_hop_gateway ?next_hop_ilb
    ?next_hop_instance ?next_hop_instance_zone ?next_hop_ip
    ?next_hop_vpn_tunnel ?priority ?project ?tags ?timeouts
    ~dest_range ~name ~network __id =
  let __type = "google_compute_route" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       dest_range = Prop.computed __type __id "dest_range";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       next_hop_gateway =
         Prop.computed __type __id "next_hop_gateway";
       next_hop_ilb = Prop.computed __type __id "next_hop_ilb";
       next_hop_instance =
         Prop.computed __type __id "next_hop_instance";
       next_hop_instance_zone =
         Prop.computed __type __id "next_hop_instance_zone";
       next_hop_ip = Prop.computed __type __id "next_hop_ip";
       next_hop_network =
         Prop.computed __type __id "next_hop_network";
       next_hop_vpn_tunnel =
         Prop.computed __type __id "next_hop_vpn_tunnel";
       priority = Prop.computed __type __id "priority";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_route
        (google_compute_route ?description ?id ?next_hop_gateway
           ?next_hop_ilb ?next_hop_instance ?next_hop_instance_zone
           ?next_hop_ip ?next_hop_vpn_tunnel ?priority ?project ?tags
           ?timeouts ~dest_range ~name ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?next_hop_gateway
    ?next_hop_ilb ?next_hop_instance ?next_hop_instance_zone
    ?next_hop_ip ?next_hop_vpn_tunnel ?priority ?project ?tags
    ?timeouts ~dest_range ~name ~network __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?next_hop_gateway ?next_hop_ilb
      ?next_hop_instance ?next_hop_instance_zone ?next_hop_ip
      ?next_hop_vpn_tunnel ?priority ?project ?tags ?timeouts
      ~dest_range ~name ~network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
