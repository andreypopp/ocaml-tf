(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type alternative_name_server_config__target_name_servers = {
  forwarding_path : string prop option; [@option]
  ipv4_address : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : alternative_name_server_config__target_name_servers) -> ()

let yojson_of_alternative_name_server_config__target_name_servers =
  (function
   | {
       forwarding_path = v_forwarding_path;
       ipv4_address = v_ipv4_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv4_address in
         ("ipv4_address", arg) :: bnds
       in
       let bnds =
         match v_forwarding_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "forwarding_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : alternative_name_server_config__target_name_servers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alternative_name_server_config__target_name_servers

[@@@deriving.end]

type alternative_name_server_config = {
  target_name_servers :
    alternative_name_server_config__target_name_servers list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : alternative_name_server_config) -> ()

let yojson_of_alternative_name_server_config =
  (function
   | { target_name_servers = v_target_name_servers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_alternative_name_server_config__target_name_servers
             v_target_name_servers
         in
         ("target_name_servers", arg) :: bnds
       in
       `Assoc bnds
    : alternative_name_server_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_alternative_name_server_config

[@@@deriving.end]

type networks = { network_url : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : networks) -> ()

let yojson_of_networks =
  (function
   | { network_url = v_network_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_url in
         ("network_url", arg) :: bnds
       in
       `Assoc bnds
    : networks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_networks

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

type google_dns_policy = {
  description : string prop option; [@option]
  enable_inbound_forwarding : bool prop option; [@option]
  enable_logging : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  alternative_name_server_config :
    alternative_name_server_config list;
  networks : networks list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_policy) -> ()

let yojson_of_google_dns_policy =
  (function
   | {
       description = v_description;
       enable_inbound_forwarding = v_enable_inbound_forwarding;
       enable_logging = v_enable_logging;
       id = v_id;
       name = v_name;
       project = v_project;
       alternative_name_server_config =
         v_alternative_name_server_config;
       networks = v_networks;
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
         let arg = yojson_of_list yojson_of_networks v_networks in
         ("networks", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_alternative_name_server_config
             v_alternative_name_server_config
         in
         ("alternative_name_server_config", arg) :: bnds
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
       let bnds =
         match v_enable_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_inbound_forwarding with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_inbound_forwarding", arg in
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
    : google_dns_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_policy

[@@@deriving.end]

let alternative_name_server_config__target_name_servers
    ?forwarding_path ~ipv4_address () :
    alternative_name_server_config__target_name_servers =
  { forwarding_path; ipv4_address }

let alternative_name_server_config ~target_name_servers () :
    alternative_name_server_config =
  { target_name_servers }

let networks ~network_url () : networks = { network_url }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dns_policy ?description ?enable_inbound_forwarding
    ?enable_logging ?id ?project ?timeouts ~name
    ~alternative_name_server_config ~networks () : google_dns_policy
    =
  {
    description;
    enable_inbound_forwarding;
    enable_logging;
    id;
    name;
    project;
    alternative_name_server_config;
    networks;
    timeouts;
  }

type t = {
  description : string prop;
  enable_inbound_forwarding : bool prop;
  enable_logging : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?description ?enable_inbound_forwarding ?enable_logging ?id
    ?project ?timeouts ~name ~alternative_name_server_config
    ~networks __id =
  let __type = "google_dns_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       enable_inbound_forwarding =
         Prop.computed __type __id "enable_inbound_forwarding";
       enable_logging = Prop.computed __type __id "enable_logging";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_policy
        (google_dns_policy ?description ?enable_inbound_forwarding
           ?enable_logging ?id ?project ?timeouts ~name
           ~alternative_name_server_config ~networks ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enable_inbound_forwarding
    ?enable_logging ?id ?project ?timeouts ~name
    ~alternative_name_server_config ~networks __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enable_inbound_forwarding ?enable_logging ?id
      ?project ?timeouts ~name ~alternative_name_server_config
      ~networks __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
