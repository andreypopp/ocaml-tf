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

type google_network_services_gateway = {
  addresses : string prop list option; [@option]
  certificate_urls : string prop list option; [@option]
  delete_swg_autogen_router_on_destroy : bool prop option; [@option]
  description : string prop option; [@option]
  gateway_security_policy : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop option; [@option]
  name : string prop;
  network : string prop option; [@option]
  ports : float prop list; [@default []] [@yojson_drop_default ( = )]
  project : string prop option; [@option]
  scope : string prop option; [@option]
  server_tls_policy : string prop option; [@option]
  subnetwork : string prop option; [@option]
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_network_services_gateway) -> ()

let yojson_of_google_network_services_gateway =
  (function
   | {
       addresses = v_addresses;
       certificate_urls = v_certificate_urls;
       delete_swg_autogen_router_on_destroy =
         v_delete_swg_autogen_router_on_destroy;
       description = v_description;
       gateway_security_policy = v_gateway_security_policy;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       network = v_network;
       ports = v_ports;
       project = v_project;
       scope = v_scope;
       server_tls_policy = v_server_tls_policy;
       subnetwork = v_subnetwork;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_server_tls_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "server_tls_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scope", arg in
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
         if [] = v_ports then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_float))
               v_ports
           in
           let bnd = "ports", arg in
           bnd :: bnds
       in
       let bnds =
         match v_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
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
         match v_gateway_security_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gateway_security_policy", arg in
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
         match v_delete_swg_autogen_router_on_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "delete_swg_autogen_router_on_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_urls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "certificate_urls", arg in
             bnd :: bnds
       in
       let bnds =
         match v_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "addresses", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_network_services_gateway ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_network_services_gateway

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_services_gateway ?addresses ?certificate_urls
    ?delete_swg_autogen_router_on_destroy ?description
    ?gateway_security_policy ?id ?labels ?location ?network ?project
    ?scope ?server_tls_policy ?subnetwork ?timeouts ~name ~ports
    ~type_ () : google_network_services_gateway =
  {
    addresses;
    certificate_urls;
    delete_swg_autogen_router_on_destroy;
    description;
    gateway_security_policy;
    id;
    labels;
    location;
    name;
    network;
    ports;
    project;
    scope;
    server_tls_policy;
    subnetwork;
    type_;
    timeouts;
  }

type t = {
  tf_name : string;
  addresses : string list prop;
  certificate_urls : string list prop;
  create_time : string prop;
  delete_swg_autogen_router_on_destroy : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  gateway_security_policy : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  ports : float list prop;
  project : string prop;
  scope : string prop;
  self_link : string prop;
  server_tls_policy : string prop;
  subnetwork : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  update_time : string prop;
}

let make ?addresses ?certificate_urls
    ?delete_swg_autogen_router_on_destroy ?description
    ?gateway_security_policy ?id ?labels ?location ?network ?project
    ?scope ?server_tls_policy ?subnetwork ?timeouts ~name ~ports
    ~type_ __id =
  let __type = "google_network_services_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       addresses = Prop.computed __type __id "addresses";
       certificate_urls =
         Prop.computed __type __id "certificate_urls";
       create_time = Prop.computed __type __id "create_time";
       delete_swg_autogen_router_on_destroy =
         Prop.computed __type __id
           "delete_swg_autogen_router_on_destroy";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       gateway_security_policy =
         Prop.computed __type __id "gateway_security_policy";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       ports = Prop.computed __type __id "ports";
       project = Prop.computed __type __id "project";
       scope = Prop.computed __type __id "scope";
       self_link = Prop.computed __type __id "self_link";
       server_tls_policy =
         Prop.computed __type __id "server_tls_policy";
       subnetwork = Prop.computed __type __id "subnetwork";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       type_ = Prop.computed __type __id "type";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_services_gateway
        (google_network_services_gateway ?addresses ?certificate_urls
           ?delete_swg_autogen_router_on_destroy ?description
           ?gateway_security_policy ?id ?labels ?location ?network
           ?project ?scope ?server_tls_policy ?subnetwork ?timeouts
           ~name ~ports ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?addresses ?certificate_urls
    ?delete_swg_autogen_router_on_destroy ?description
    ?gateway_security_policy ?id ?labels ?location ?network ?project
    ?scope ?server_tls_policy ?subnetwork ?timeouts ~name ~ports
    ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?addresses ?certificate_urls
      ?delete_swg_autogen_router_on_destroy ?description
      ?gateway_security_policy ?id ?labels ?location ?network
      ?project ?scope ?server_tls_policy ?subnetwork ?timeouts ~name
      ~ports ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
