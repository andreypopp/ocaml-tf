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

type google_compute_network = {
  auto_create_subnetworks : bool prop option; [@option]
  delete_default_routes_on_create : bool prop option; [@option]
  description : string prop option; [@option]
  enable_ula_internal_ipv6 : bool prop option; [@option]
  id : string prop option; [@option]
  internal_ipv6_range : string prop option; [@option]
  mtu : float prop option; [@option]
  name : string prop;
  network_firewall_policy_enforcement_order : string prop option;
      [@option]
  project : string prop option; [@option]
  routing_mode : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_network) -> ()

let yojson_of_google_compute_network =
  (function
   | {
       auto_create_subnetworks = v_auto_create_subnetworks;
       delete_default_routes_on_create =
         v_delete_default_routes_on_create;
       description = v_description;
       enable_ula_internal_ipv6 = v_enable_ula_internal_ipv6;
       id = v_id;
       internal_ipv6_range = v_internal_ipv6_range;
       mtu = v_mtu;
       name = v_name;
       network_firewall_policy_enforcement_order =
         v_network_firewall_policy_enforcement_order;
       project = v_project;
       routing_mode = v_routing_mode;
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
         match v_routing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_mode", arg in
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
         match v_network_firewall_policy_enforcement_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "network_firewall_policy_enforcement_order", arg
             in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mtu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "mtu", arg in
             bnd :: bnds
       in
       let bnds =
         match v_internal_ipv6_range with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "internal_ipv6_range", arg in
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
       let bnds =
         match v_enable_ula_internal_ipv6 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_ula_internal_ipv6", arg in
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
       let bnds =
         match v_delete_default_routes_on_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_default_routes_on_create", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_create_subnetworks with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_create_subnetworks", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_network

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_network ?auto_create_subnetworks
    ?delete_default_routes_on_create ?description
    ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range ?mtu
    ?network_firewall_policy_enforcement_order ?project ?routing_mode
    ?timeouts ~name () : google_compute_network =
  {
    auto_create_subnetworks;
    delete_default_routes_on_create;
    description;
    enable_ula_internal_ipv6;
    id;
    internal_ipv6_range;
    mtu;
    name;
    network_firewall_policy_enforcement_order;
    project;
    routing_mode;
    timeouts;
  }

type t = {
  auto_create_subnetworks : bool prop;
  delete_default_routes_on_create : bool prop;
  description : string prop;
  enable_ula_internal_ipv6 : bool prop;
  gateway_ipv4 : string prop;
  id : string prop;
  internal_ipv6_range : string prop;
  mtu : float prop;
  name : string prop;
  network_firewall_policy_enforcement_order : string prop;
  numeric_id : string prop;
  project : string prop;
  routing_mode : string prop;
  self_link : string prop;
}

let make ?auto_create_subnetworks ?delete_default_routes_on_create
    ?description ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range
    ?mtu ?network_firewall_policy_enforcement_order ?project
    ?routing_mode ?timeouts ~name __id =
  let __type = "google_compute_network" in
  let __attrs =
    ({
       auto_create_subnetworks =
         Prop.computed __type __id "auto_create_subnetworks";
       delete_default_routes_on_create =
         Prop.computed __type __id "delete_default_routes_on_create";
       description = Prop.computed __type __id "description";
       enable_ula_internal_ipv6 =
         Prop.computed __type __id "enable_ula_internal_ipv6";
       gateway_ipv4 = Prop.computed __type __id "gateway_ipv4";
       id = Prop.computed __type __id "id";
       internal_ipv6_range =
         Prop.computed __type __id "internal_ipv6_range";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       network_firewall_policy_enforcement_order =
         Prop.computed __type __id
           "network_firewall_policy_enforcement_order";
       numeric_id = Prop.computed __type __id "numeric_id";
       project = Prop.computed __type __id "project";
       routing_mode = Prop.computed __type __id "routing_mode";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_network
        (google_compute_network ?auto_create_subnetworks
           ?delete_default_routes_on_create ?description
           ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range ?mtu
           ?network_firewall_policy_enforcement_order ?project
           ?routing_mode ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_create_subnetworks
    ?delete_default_routes_on_create ?description
    ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range ?mtu
    ?network_firewall_policy_enforcement_order ?project ?routing_mode
    ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?auto_create_subnetworks ?delete_default_routes_on_create
      ?description ?enable_ula_internal_ipv6 ?id ?internal_ipv6_range
      ?mtu ?network_firewall_policy_enforcement_order ?project
      ?routing_mode ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
