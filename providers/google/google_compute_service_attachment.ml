(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type consumer_accept_lists = {
  connection_limit : float prop;
  network_url : string prop option; [@option]
  project_id_or_num : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : consumer_accept_lists) -> ()

let yojson_of_consumer_accept_lists =
  (function
   | {
       connection_limit = v_connection_limit;
       network_url = v_network_url;
       project_id_or_num = v_project_id_or_num;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project_id_or_num with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project_id_or_num", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_url", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_connection_limit
         in
         ("connection_limit", arg) :: bnds
       in
       `Assoc bnds
    : consumer_accept_lists -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_consumer_accept_lists

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

type connected_endpoints = {
  endpoint : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : connected_endpoints) -> ()

let yojson_of_connected_endpoints =
  (function
   | { endpoint = v_endpoint; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_endpoint in
         ("endpoint", arg) :: bnds
       in
       `Assoc bnds
    : connected_endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_connected_endpoints

[@@@deriving.end]

type google_compute_service_attachment = {
  connection_preference : string prop;
  consumer_reject_lists : string prop list option; [@option]
  description : string prop option; [@option]
  domain_names : string prop list option; [@option]
  enable_proxy_protocol : bool prop;
  id : string prop option; [@option]
  name : string prop;
  nat_subnets : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  project : string prop option; [@option]
  reconcile_connections : bool prop option; [@option]
  region : string prop option; [@option]
  target_service : string prop;
  consumer_accept_lists : consumer_accept_lists list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_compute_service_attachment) -> ()

let yojson_of_google_compute_service_attachment =
  (function
   | {
       connection_preference = v_connection_preference;
       consumer_reject_lists = v_consumer_reject_lists;
       description = v_description;
       domain_names = v_domain_names;
       enable_proxy_protocol = v_enable_proxy_protocol;
       id = v_id;
       name = v_name;
       nat_subnets = v_nat_subnets;
       project = v_project;
       reconcile_connections = v_reconcile_connections;
       region = v_region;
       target_service = v_target_service;
       consumer_accept_lists = v_consumer_accept_lists;
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
         if Stdlib.( = ) [] v_consumer_accept_lists then bnds
         else
           let arg =
             (yojson_of_list yojson_of_consumer_accept_lists)
               v_consumer_accept_lists
           in
           let bnd = "consumer_accept_lists", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_target_service
         in
         ("target_service", arg) :: bnds
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
         match v_reconcile_connections with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "reconcile_connections", arg in
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
         if Stdlib.( = ) [] v_nat_subnets then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_nat_subnets
           in
           let bnd = "nat_subnets", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_proxy_protocol
         in
         ("enable_proxy_protocol", arg) :: bnds
       in
       let bnds =
         match v_domain_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "domain_names", arg in
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
         match v_consumer_reject_lists with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "consumer_reject_lists", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_connection_preference
         in
         ("connection_preference", arg) :: bnds
       in
       `Assoc bnds
    : google_compute_service_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_compute_service_attachment

[@@@deriving.end]

let consumer_accept_lists ?network_url ?project_id_or_num
    ~connection_limit () : consumer_accept_lists =
  { connection_limit; network_url; project_id_or_num }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_service_attachment ?consumer_reject_lists
    ?description ?domain_names ?id ?project ?reconcile_connections
    ?region ?timeouts ~connection_preference ~enable_proxy_protocol
    ~name ~nat_subnets ~target_service ~consumer_accept_lists () :
    google_compute_service_attachment =
  {
    connection_preference;
    consumer_reject_lists;
    description;
    domain_names;
    enable_proxy_protocol;
    id;
    name;
    nat_subnets;
    project;
    reconcile_connections;
    region;
    target_service;
    consumer_accept_lists;
    timeouts;
  }

type t = {
  tf_name : string;
  connected_endpoints : connected_endpoints list prop;
  connection_preference : string prop;
  consumer_reject_lists : string list prop;
  description : string prop;
  domain_names : string list prop;
  enable_proxy_protocol : bool prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  nat_subnets : string list prop;
  project : string prop;
  reconcile_connections : bool prop;
  region : string prop;
  self_link : string prop;
  target_service : string prop;
}

let make ?consumer_reject_lists ?description ?domain_names ?id
    ?project ?reconcile_connections ?region ?timeouts
    ~connection_preference ~enable_proxy_protocol ~name ~nat_subnets
    ~target_service ~consumer_accept_lists __id =
  let __type = "google_compute_service_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       connected_endpoints =
         Prop.computed __type __id "connected_endpoints";
       connection_preference =
         Prop.computed __type __id "connection_preference";
       consumer_reject_lists =
         Prop.computed __type __id "consumer_reject_lists";
       description = Prop.computed __type __id "description";
       domain_names = Prop.computed __type __id "domain_names";
       enable_proxy_protocol =
         Prop.computed __type __id "enable_proxy_protocol";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       nat_subnets = Prop.computed __type __id "nat_subnets";
       project = Prop.computed __type __id "project";
       reconcile_connections =
         Prop.computed __type __id "reconcile_connections";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
       target_service = Prop.computed __type __id "target_service";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_service_attachment
        (google_compute_service_attachment ?consumer_reject_lists
           ?description ?domain_names ?id ?project
           ?reconcile_connections ?region ?timeouts
           ~connection_preference ~enable_proxy_protocol ~name
           ~nat_subnets ~target_service ~consumer_accept_lists ());
    attrs = __attrs;
  }

let register ?tf_module ?consumer_reject_lists ?description
    ?domain_names ?id ?project ?reconcile_connections ?region
    ?timeouts ~connection_preference ~enable_proxy_protocol ~name
    ~nat_subnets ~target_service ~consumer_accept_lists __id =
  let (r : _ Tf_core.resource) =
    make ?consumer_reject_lists ?description ?domain_names ?id
      ?project ?reconcile_connections ?region ?timeouts
      ~connection_preference ~enable_proxy_protocol ~name
      ~nat_subnets ~target_service ~consumer_accept_lists __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
