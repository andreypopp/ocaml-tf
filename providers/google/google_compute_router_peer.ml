(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advertised_ip_ranges = {
  description : string prop option; [@option]
  range : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advertised_ip_ranges) -> ()

let yojson_of_advertised_ip_ranges =
  (function
   | { description = v_description; range = v_range } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_range in
         ("range", arg) :: bnds
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
    : advertised_ip_ranges -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advertised_ip_ranges

[@@@deriving.end]

type bfd = {
  min_receive_interval : float prop option; [@option]
  min_transmit_interval : float prop option; [@option]
  multiplier : float prop option; [@option]
  session_initialization_mode : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bfd) -> ()

let yojson_of_bfd =
  (function
   | {
       min_receive_interval = v_min_receive_interval;
       min_transmit_interval = v_min_transmit_interval;
       multiplier = v_multiplier;
       session_initialization_mode = v_session_initialization_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_session_initialization_mode
         in
         ("session_initialization_mode", arg) :: bnds
       in
       let bnds =
         match v_multiplier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "multiplier", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_transmit_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_transmit_interval", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_receive_interval with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_receive_interval", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bfd -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bfd

[@@@deriving.end]

type md5_authentication_key = {
  key : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : md5_authentication_key) -> ()

let yojson_of_md5_authentication_key =
  (function
   | { key = v_key; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : md5_authentication_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_md5_authentication_key

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

type google_compute_router_peer = {
  advertise_mode : string prop option; [@option]
  advertised_groups : string prop list option; [@option]
  advertised_route_priority : float prop option; [@option]
  enable : bool prop option; [@option]
  enable_ipv4 : bool prop option; [@option]
  enable_ipv6 : bool prop option; [@option]
  id : string prop option; [@option]
  interface : string prop;
  ip_address : string prop option; [@option]
  ipv4_nexthop_address : string prop option; [@option]
  ipv6_nexthop_address : string prop option; [@option]
  name : string prop;
  peer_asn : float prop;
  peer_ip_address : string prop option; [@option]
  peer_ipv4_nexthop_address : string prop option; [@option]
  peer_ipv6_nexthop_address : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  router : string prop;
  router_appliance_instance : string prop option; [@option]
  advertised_ip_ranges : advertised_ip_ranges list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  bfd : bfd list; [@default []] [@yojson_drop_default Stdlib.( = )]
  md5_authentication_key : md5_authentication_key list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_router_peer) -> ()

let yojson_of_google_compute_router_peer =
  (function
   | {
       advertise_mode = v_advertise_mode;
       advertised_groups = v_advertised_groups;
       advertised_route_priority = v_advertised_route_priority;
       enable = v_enable;
       enable_ipv4 = v_enable_ipv4;
       enable_ipv6 = v_enable_ipv6;
       id = v_id;
       interface = v_interface;
       ip_address = v_ip_address;
       ipv4_nexthop_address = v_ipv4_nexthop_address;
       ipv6_nexthop_address = v_ipv6_nexthop_address;
       name = v_name;
       peer_asn = v_peer_asn;
       peer_ip_address = v_peer_ip_address;
       peer_ipv4_nexthop_address = v_peer_ipv4_nexthop_address;
       peer_ipv6_nexthop_address = v_peer_ipv6_nexthop_address;
       project = v_project;
       region = v_region;
       router = v_router;
       router_appliance_instance = v_router_appliance_instance;
       advertised_ip_ranges = v_advertised_ip_ranges;
       bfd = v_bfd;
       md5_authentication_key = v_md5_authentication_key;
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
         if Stdlib.( = ) [] v_md5_authentication_key then bnds
         else
           let arg =
             (yojson_of_list yojson_of_md5_authentication_key)
               v_md5_authentication_key
           in
           let bnd = "md5_authentication_key", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bfd then bnds
         else
           let arg = (yojson_of_list yojson_of_bfd) v_bfd in
           let bnd = "bfd", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_advertised_ip_ranges then bnds
         else
           let arg =
             (yojson_of_list yojson_of_advertised_ip_ranges)
               v_advertised_ip_ranges
           in
           let bnd = "advertised_ip_ranges", arg in
           bnd :: bnds
       in
       let bnds =
         match v_router_appliance_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "router_appliance_instance", arg in
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_ipv6_nexthop_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_ipv6_nexthop_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_ipv4_nexthop_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_ipv4_nexthop_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_peer_asn in
         ("peer_asn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_ipv6_nexthop_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv6_nexthop_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipv4_nexthop_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv4_nexthop_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_interface in
         ("interface", arg) :: bnds
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
         match v_enable_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ipv6", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_ipv4 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ipv4", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_advertised_route_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "advertised_route_priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_advertised_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "advertised_groups", arg in
             bnd :: bnds
       in
       let bnds =
         match v_advertise_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "advertise_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_router_peer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_router_peer

[@@@deriving.end]

let advertised_ip_ranges ?description ~range () :
    advertised_ip_ranges =
  { description; range }

let bfd ?min_receive_interval ?min_transmit_interval ?multiplier
    ~session_initialization_mode () : bfd =
  {
    min_receive_interval;
    min_transmit_interval;
    multiplier;
    session_initialization_mode;
  }

let md5_authentication_key ~key ~name () : md5_authentication_key =
  { key; name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_router_peer ?advertise_mode ?advertised_groups
    ?advertised_route_priority ?enable ?enable_ipv4 ?enable_ipv6 ?id
    ?ip_address ?ipv4_nexthop_address ?ipv6_nexthop_address
    ?peer_ip_address ?peer_ipv4_nexthop_address
    ?peer_ipv6_nexthop_address ?project ?region
    ?router_appliance_instance ?(advertised_ip_ranges = [])
    ?(bfd = []) ?(md5_authentication_key = []) ?timeouts ~interface
    ~name ~peer_asn ~router () : google_compute_router_peer =
  {
    advertise_mode;
    advertised_groups;
    advertised_route_priority;
    enable;
    enable_ipv4;
    enable_ipv6;
    id;
    interface;
    ip_address;
    ipv4_nexthop_address;
    ipv6_nexthop_address;
    name;
    peer_asn;
    peer_ip_address;
    peer_ipv4_nexthop_address;
    peer_ipv6_nexthop_address;
    project;
    region;
    router;
    router_appliance_instance;
    advertised_ip_ranges;
    bfd;
    md5_authentication_key;
    timeouts;
  }

type t = {
  tf_name : string;
  advertise_mode : string prop;
  advertised_groups : string list prop;
  advertised_route_priority : float prop;
  enable : bool prop;
  enable_ipv4 : bool prop;
  enable_ipv6 : bool prop;
  id : string prop;
  interface : string prop;
  ip_address : string prop;
  ipv4_nexthop_address : string prop;
  ipv6_nexthop_address : string prop;
  management_type : string prop;
  name : string prop;
  peer_asn : float prop;
  peer_ip_address : string prop;
  peer_ipv4_nexthop_address : string prop;
  peer_ipv6_nexthop_address : string prop;
  project : string prop;
  region : string prop;
  router : string prop;
  router_appliance_instance : string prop;
}

let make ?advertise_mode ?advertised_groups
    ?advertised_route_priority ?enable ?enable_ipv4 ?enable_ipv6 ?id
    ?ip_address ?ipv4_nexthop_address ?ipv6_nexthop_address
    ?peer_ip_address ?peer_ipv4_nexthop_address
    ?peer_ipv6_nexthop_address ?project ?region
    ?router_appliance_instance ?(advertised_ip_ranges = [])
    ?(bfd = []) ?(md5_authentication_key = []) ?timeouts ~interface
    ~name ~peer_asn ~router __id =
  let __type = "google_compute_router_peer" in
  let __attrs =
    ({
       tf_name = __id;
       advertise_mode = Prop.computed __type __id "advertise_mode";
       advertised_groups =
         Prop.computed __type __id "advertised_groups";
       advertised_route_priority =
         Prop.computed __type __id "advertised_route_priority";
       enable = Prop.computed __type __id "enable";
       enable_ipv4 = Prop.computed __type __id "enable_ipv4";
       enable_ipv6 = Prop.computed __type __id "enable_ipv6";
       id = Prop.computed __type __id "id";
       interface = Prop.computed __type __id "interface";
       ip_address = Prop.computed __type __id "ip_address";
       ipv4_nexthop_address =
         Prop.computed __type __id "ipv4_nexthop_address";
       ipv6_nexthop_address =
         Prop.computed __type __id "ipv6_nexthop_address";
       management_type = Prop.computed __type __id "management_type";
       name = Prop.computed __type __id "name";
       peer_asn = Prop.computed __type __id "peer_asn";
       peer_ip_address = Prop.computed __type __id "peer_ip_address";
       peer_ipv4_nexthop_address =
         Prop.computed __type __id "peer_ipv4_nexthop_address";
       peer_ipv6_nexthop_address =
         Prop.computed __type __id "peer_ipv6_nexthop_address";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       router = Prop.computed __type __id "router";
       router_appliance_instance =
         Prop.computed __type __id "router_appliance_instance";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_router_peer
        (google_compute_router_peer ?advertise_mode
           ?advertised_groups ?advertised_route_priority ?enable
           ?enable_ipv4 ?enable_ipv6 ?id ?ip_address
           ?ipv4_nexthop_address ?ipv6_nexthop_address
           ?peer_ip_address ?peer_ipv4_nexthop_address
           ?peer_ipv6_nexthop_address ?project ?region
           ?router_appliance_instance ~advertised_ip_ranges ~bfd
           ~md5_authentication_key ?timeouts ~interface ~name
           ~peer_asn ~router ());
    attrs = __attrs;
  }

let register ?tf_module ?advertise_mode ?advertised_groups
    ?advertised_route_priority ?enable ?enable_ipv4 ?enable_ipv6 ?id
    ?ip_address ?ipv4_nexthop_address ?ipv6_nexthop_address
    ?peer_ip_address ?peer_ipv4_nexthop_address
    ?peer_ipv6_nexthop_address ?project ?region
    ?router_appliance_instance ?(advertised_ip_ranges = [])
    ?(bfd = []) ?(md5_authentication_key = []) ?timeouts ~interface
    ~name ~peer_asn ~router __id =
  let (r : _ Tf_core.resource) =
    make ?advertise_mode ?advertised_groups
      ?advertised_route_priority ?enable ?enable_ipv4 ?enable_ipv6
      ?id ?ip_address ?ipv4_nexthop_address ?ipv6_nexthop_address
      ?peer_ip_address ?peer_ipv4_nexthop_address
      ?peer_ipv6_nexthop_address ?project ?region
      ?router_appliance_instance ~advertised_ip_ranges ~bfd
      ~md5_authentication_key ?timeouts ~interface ~name ~peer_asn
      ~router __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
