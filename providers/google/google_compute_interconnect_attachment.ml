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

type private_interconnect_info = { tag8021q : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : private_interconnect_info) -> ()

let yojson_of_private_interconnect_info =
  (function
   | { tag8021q = v_tag8021q } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_tag8021q in
         ("tag8021q", arg) :: bnds
       in
       `Assoc bnds
    : private_interconnect_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_private_interconnect_info

[@@@deriving.end]

type google_compute_interconnect_attachment = {
  admin_enabled : bool prop option; [@option]
  bandwidth : string prop option; [@option]
  candidate_subnets : string prop list option; [@option]
  description : string prop option; [@option]
  edge_availability_domain : string prop option; [@option]
  encryption : string prop option; [@option]
  id : string prop option; [@option]
  interconnect : string prop option; [@option]
  ipsec_internal_addresses : string prop list option; [@option]
  mtu : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  router : string prop;
  stack_type : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  vlan_tag8021q : float prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_interconnect_attachment) -> ()

let yojson_of_google_compute_interconnect_attachment =
  (function
   | {
       admin_enabled = v_admin_enabled;
       bandwidth = v_bandwidth;
       candidate_subnets = v_candidate_subnets;
       description = v_description;
       edge_availability_domain = v_edge_availability_domain;
       encryption = v_encryption;
       id = v_id;
       interconnect = v_interconnect;
       ipsec_internal_addresses = v_ipsec_internal_addresses;
       mtu = v_mtu;
       name = v_name;
       project = v_project;
       region = v_region;
       router = v_router;
       stack_type = v_stack_type;
       type_ = v_type_;
       vlan_tag8021q = v_vlan_tag8021q;
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
         match v_vlan_tag8021q with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vlan_tag8021q", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mtu with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mtu", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ipsec_internal_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ipsec_internal_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interconnect with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "interconnect", arg in
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
         match v_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_edge_availability_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "edge_availability_domain", arg in
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
         match v_candidate_subnets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "candidate_subnets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bandwidth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bandwidth", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "admin_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_interconnect_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_interconnect_attachment

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_interconnect_attachment ?admin_enabled ?bandwidth
    ?candidate_subnets ?description ?edge_availability_domain
    ?encryption ?id ?interconnect ?ipsec_internal_addresses ?mtu
    ?project ?region ?stack_type ?type_ ?vlan_tag8021q ?timeouts
    ~name ~router () : google_compute_interconnect_attachment =
  {
    admin_enabled;
    bandwidth;
    candidate_subnets;
    description;
    edge_availability_domain;
    encryption;
    id;
    interconnect;
    ipsec_internal_addresses;
    mtu;
    name;
    project;
    region;
    router;
    stack_type;
    type_;
    vlan_tag8021q;
    timeouts;
  }

type t = {
  admin_enabled : bool prop;
  bandwidth : string prop;
  candidate_subnets : string list prop;
  cloud_router_ip_address : string prop;
  creation_timestamp : string prop;
  customer_router_ip_address : string prop;
  description : string prop;
  edge_availability_domain : string prop;
  encryption : string prop;
  google_reference_id : string prop;
  id : string prop;
  interconnect : string prop;
  ipsec_internal_addresses : string list prop;
  mtu : string prop;
  name : string prop;
  pairing_key : string prop;
  partner_asn : string prop;
  private_interconnect_info : private_interconnect_info list prop;
  project : string prop;
  region : string prop;
  router : string prop;
  self_link : string prop;
  stack_type : string prop;
  state : string prop;
  type_ : string prop;
  vlan_tag8021q : float prop;
}

let make ?admin_enabled ?bandwidth ?candidate_subnets ?description
    ?edge_availability_domain ?encryption ?id ?interconnect
    ?ipsec_internal_addresses ?mtu ?project ?region ?stack_type
    ?type_ ?vlan_tag8021q ?timeouts ~name ~router __id =
  let __type = "google_compute_interconnect_attachment" in
  let __attrs =
    ({
       admin_enabled = Prop.computed __type __id "admin_enabled";
       bandwidth = Prop.computed __type __id "bandwidth";
       candidate_subnets =
         Prop.computed __type __id "candidate_subnets";
       cloud_router_ip_address =
         Prop.computed __type __id "cloud_router_ip_address";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       customer_router_ip_address =
         Prop.computed __type __id "customer_router_ip_address";
       description = Prop.computed __type __id "description";
       edge_availability_domain =
         Prop.computed __type __id "edge_availability_domain";
       encryption = Prop.computed __type __id "encryption";
       google_reference_id =
         Prop.computed __type __id "google_reference_id";
       id = Prop.computed __type __id "id";
       interconnect = Prop.computed __type __id "interconnect";
       ipsec_internal_addresses =
         Prop.computed __type __id "ipsec_internal_addresses";
       mtu = Prop.computed __type __id "mtu";
       name = Prop.computed __type __id "name";
       pairing_key = Prop.computed __type __id "pairing_key";
       partner_asn = Prop.computed __type __id "partner_asn";
       private_interconnect_info =
         Prop.computed __type __id "private_interconnect_info";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       router = Prop.computed __type __id "router";
       self_link = Prop.computed __type __id "self_link";
       stack_type = Prop.computed __type __id "stack_type";
       state = Prop.computed __type __id "state";
       type_ = Prop.computed __type __id "type";
       vlan_tag8021q = Prop.computed __type __id "vlan_tag8021q";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_interconnect_attachment
        (google_compute_interconnect_attachment ?admin_enabled
           ?bandwidth ?candidate_subnets ?description
           ?edge_availability_domain ?encryption ?id ?interconnect
           ?ipsec_internal_addresses ?mtu ?project ?region
           ?stack_type ?type_ ?vlan_tag8021q ?timeouts ~name ~router
           ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_enabled ?bandwidth ?candidate_subnets
    ?description ?edge_availability_domain ?encryption ?id
    ?interconnect ?ipsec_internal_addresses ?mtu ?project ?region
    ?stack_type ?type_ ?vlan_tag8021q ?timeouts ~name ~router __id =
  let (r : _ Tf_core.resource) =
    make ?admin_enabled ?bandwidth ?candidate_subnets ?description
      ?edge_availability_domain ?encryption ?id ?interconnect
      ?ipsec_internal_addresses ?mtu ?project ?region ?stack_type
      ?type_ ?vlan_tag8021q ?timeouts ~name ~router __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
