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

type google_compute_vpn_tunnel = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  ike_version : float prop option; [@option]
  labels : string prop Tf_core.assoc option; [@option]
  local_traffic_selector : string prop list option; [@option]
  name : string prop;
  peer_external_gateway : string prop option; [@option]
  peer_external_gateway_interface : float prop option; [@option]
  peer_gcp_gateway : string prop option; [@option]
  peer_ip : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  remote_traffic_selector : string prop list option; [@option]
  router : string prop option; [@option]
  shared_secret : string prop;
  target_vpn_gateway : string prop option; [@option]
  vpn_gateway : string prop option; [@option]
  vpn_gateway_interface : float prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_vpn_tunnel) -> ()

let yojson_of_google_compute_vpn_tunnel =
  (function
   | {
       description = v_description;
       id = v_id;
       ike_version = v_ike_version;
       labels = v_labels;
       local_traffic_selector = v_local_traffic_selector;
       name = v_name;
       peer_external_gateway = v_peer_external_gateway;
       peer_external_gateway_interface =
         v_peer_external_gateway_interface;
       peer_gcp_gateway = v_peer_gcp_gateway;
       peer_ip = v_peer_ip;
       project = v_project;
       region = v_region;
       remote_traffic_selector = v_remote_traffic_selector;
       router = v_router;
       shared_secret = v_shared_secret;
       target_vpn_gateway = v_target_vpn_gateway;
       vpn_gateway = v_vpn_gateway;
       vpn_gateway_interface = v_vpn_gateway_interface;
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
         match v_vpn_gateway_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vpn_gateway_interface", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vpn_gateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpn_gateway", arg in
             bnd :: bnds
       in
       let bnds =
         match v_target_vpn_gateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_vpn_gateway", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_shared_secret in
         ("shared_secret", arg) :: bnds
       in
       let bnds =
         match v_router with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "router", arg in
             bnd :: bnds
       in
       let bnds =
         match v_remote_traffic_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "remote_traffic_selector", arg in
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
         match v_peer_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_gcp_gateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_gcp_gateway", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_external_gateway_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "peer_external_gateway_interface", arg in
             bnd :: bnds
       in
       let bnds =
         match v_peer_external_gateway with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "peer_external_gateway", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_local_traffic_selector with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "local_traffic_selector", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ike_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ike_version", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_compute_vpn_tunnel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_vpn_tunnel

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_vpn_tunnel ?description ?id ?ike_version ?labels
    ?local_traffic_selector ?peer_external_gateway
    ?peer_external_gateway_interface ?peer_gcp_gateway ?peer_ip
    ?project ?region ?remote_traffic_selector ?router
    ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface ?timeouts
    ~name ~shared_secret () : google_compute_vpn_tunnel =
  {
    description;
    id;
    ike_version;
    labels;
    local_traffic_selector;
    name;
    peer_external_gateway;
    peer_external_gateway_interface;
    peer_gcp_gateway;
    peer_ip;
    project;
    region;
    remote_traffic_selector;
    router;
    shared_secret;
    target_vpn_gateway;
    vpn_gateway;
    vpn_gateway_interface;
    timeouts;
  }

type t = {
  tf_name : string;
  creation_timestamp : string prop;
  description : string prop;
  detailed_status : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  ike_version : float prop;
  label_fingerprint : string prop;
  labels : string Tf_core.assoc prop;
  local_traffic_selector : string list prop;
  name : string prop;
  peer_external_gateway : string prop;
  peer_external_gateway_interface : float prop;
  peer_gcp_gateway : string prop;
  peer_ip : string prop;
  project : string prop;
  region : string prop;
  remote_traffic_selector : string list prop;
  router : string prop;
  self_link : string prop;
  shared_secret : string prop;
  shared_secret_hash : string prop;
  target_vpn_gateway : string prop;
  terraform_labels : string Tf_core.assoc prop;
  tunnel_id : string prop;
  vpn_gateway : string prop;
  vpn_gateway_interface : float prop;
}

let make ?description ?id ?ike_version ?labels
    ?local_traffic_selector ?peer_external_gateway
    ?peer_external_gateway_interface ?peer_gcp_gateway ?peer_ip
    ?project ?region ?remote_traffic_selector ?router
    ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface ?timeouts
    ~name ~shared_secret __id =
  let __type = "google_compute_vpn_tunnel" in
  let __attrs =
    ({
       tf_name = __id;
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       detailed_status = Prop.computed __type __id "detailed_status";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       ike_version = Prop.computed __type __id "ike_version";
       label_fingerprint =
         Prop.computed __type __id "label_fingerprint";
       labels = Prop.computed __type __id "labels";
       local_traffic_selector =
         Prop.computed __type __id "local_traffic_selector";
       name = Prop.computed __type __id "name";
       peer_external_gateway =
         Prop.computed __type __id "peer_external_gateway";
       peer_external_gateway_interface =
         Prop.computed __type __id "peer_external_gateway_interface";
       peer_gcp_gateway =
         Prop.computed __type __id "peer_gcp_gateway";
       peer_ip = Prop.computed __type __id "peer_ip";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       remote_traffic_selector =
         Prop.computed __type __id "remote_traffic_selector";
       router = Prop.computed __type __id "router";
       self_link = Prop.computed __type __id "self_link";
       shared_secret = Prop.computed __type __id "shared_secret";
       shared_secret_hash =
         Prop.computed __type __id "shared_secret_hash";
       target_vpn_gateway =
         Prop.computed __type __id "target_vpn_gateway";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       tunnel_id = Prop.computed __type __id "tunnel_id";
       vpn_gateway = Prop.computed __type __id "vpn_gateway";
       vpn_gateway_interface =
         Prop.computed __type __id "vpn_gateway_interface";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_vpn_tunnel
        (google_compute_vpn_tunnel ?description ?id ?ike_version
           ?labels ?local_traffic_selector ?peer_external_gateway
           ?peer_external_gateway_interface ?peer_gcp_gateway
           ?peer_ip ?project ?region ?remote_traffic_selector ?router
           ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface
           ?timeouts ~name ~shared_secret ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ike_version ?labels
    ?local_traffic_selector ?peer_external_gateway
    ?peer_external_gateway_interface ?peer_gcp_gateway ?peer_ip
    ?project ?region ?remote_traffic_selector ?router
    ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface ?timeouts
    ~name ~shared_secret __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ike_version ?labels
      ?local_traffic_selector ?peer_external_gateway
      ?peer_external_gateway_interface ?peer_gcp_gateway ?peer_ip
      ?project ?region ?remote_traffic_selector ?router
      ?target_vpn_gateway ?vpn_gateway ?vpn_gateway_interface
      ?timeouts ~name ~shared_secret __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
