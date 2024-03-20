(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type open_api = { uri : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : open_api) -> ()

let yojson_of_open_api =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : open_api -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_open_api

[@@@deriving.end]

type route = {
  classification_tags : string prop list option; [@option]
  description : string prop option; [@option]
  filters : string prop list option; [@option]
  order : float prop;
  predicates : string prop list option; [@option]
  sso_validation_enabled : bool prop option; [@option]
  title : string prop option; [@option]
  token_relay : bool prop option; [@option]
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : route) -> ()

let yojson_of_route =
  (function
   | {
       classification_tags = v_classification_tags;
       description = v_description;
       filters = v_filters;
       order = v_order;
       predicates = v_predicates;
       sso_validation_enabled = v_sso_validation_enabled;
       title = v_title;
       token_relay = v_token_relay;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_relay with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "token_relay", arg in
             bnd :: bnds
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sso_validation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sso_validation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_predicates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "predicates", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_order in
         ("order", arg) :: bnds
       in
       let bnds =
         match v_filters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "filters", arg in
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
         match v_classification_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "classification_tags", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : route -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_route

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_spring_cloud_gateway_route_config = {
  filters : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  predicates : string prop list option; [@option]
  protocol : string prop option; [@option]
  spring_cloud_app_id : string prop option; [@option]
  spring_cloud_gateway_id : string prop;
  sso_validation_enabled : bool prop option; [@option]
  open_api : open_api list;
  route : route list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_spring_cloud_gateway_route_config) -> ()

let yojson_of_azurerm_spring_cloud_gateway_route_config =
  (function
   | {
       filters = v_filters;
       id = v_id;
       name = v_name;
       predicates = v_predicates;
       protocol = v_protocol;
       spring_cloud_app_id = v_spring_cloud_app_id;
       spring_cloud_gateway_id = v_spring_cloud_gateway_id;
       sso_validation_enabled = v_sso_validation_enabled;
       open_api = v_open_api;
       route = v_route;
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
         let arg = yojson_of_list yojson_of_route v_route in
         ("route", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_open_api v_open_api in
         ("open_api", arg) :: bnds
       in
       let bnds =
         match v_sso_validation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "sso_validation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_spring_cloud_gateway_id
         in
         ("spring_cloud_gateway_id", arg) :: bnds
       in
       let bnds =
         match v_spring_cloud_app_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "spring_cloud_app_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_predicates with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "predicates", arg in
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
         match v_filters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "filters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_spring_cloud_gateway_route_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_spring_cloud_gateway_route_config

[@@@deriving.end]

let open_api ?uri () : open_api = { uri }

let route ?classification_tags ?description ?filters ?predicates
    ?sso_validation_enabled ?title ?token_relay ?uri ~order () :
    route =
  {
    classification_tags;
    description;
    filters;
    order;
    predicates;
    sso_validation_enabled;
    title;
    token_relay;
    uri;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_gateway_route_config ?filters ?id
    ?predicates ?protocol ?spring_cloud_app_id
    ?sso_validation_enabled ?timeouts ~name ~spring_cloud_gateway_id
    ~open_api ~route () : azurerm_spring_cloud_gateway_route_config =
  {
    filters;
    id;
    name;
    predicates;
    protocol;
    spring_cloud_app_id;
    spring_cloud_gateway_id;
    sso_validation_enabled;
    open_api;
    route;
    timeouts;
  }

type t = {
  filters : string list prop;
  id : string prop;
  name : string prop;
  predicates : string list prop;
  protocol : string prop;
  spring_cloud_app_id : string prop;
  spring_cloud_gateway_id : string prop;
  sso_validation_enabled : bool prop;
}

let make ?filters ?id ?predicates ?protocol ?spring_cloud_app_id
    ?sso_validation_enabled ?timeouts ~name ~spring_cloud_gateway_id
    ~open_api ~route __id =
  let __type = "azurerm_spring_cloud_gateway_route_config" in
  let __attrs =
    ({
       filters = Prop.computed __type __id "filters";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       predicates = Prop.computed __type __id "predicates";
       protocol = Prop.computed __type __id "protocol";
       spring_cloud_app_id =
         Prop.computed __type __id "spring_cloud_app_id";
       spring_cloud_gateway_id =
         Prop.computed __type __id "spring_cloud_gateway_id";
       sso_validation_enabled =
         Prop.computed __type __id "sso_validation_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_spring_cloud_gateway_route_config
        (azurerm_spring_cloud_gateway_route_config ?filters ?id
           ?predicates ?protocol ?spring_cloud_app_id
           ?sso_validation_enabled ?timeouts ~name
           ~spring_cloud_gateway_id ~open_api ~route ());
    attrs = __attrs;
  }

let register ?tf_module ?filters ?id ?predicates ?protocol
    ?spring_cloud_app_id ?sso_validation_enabled ?timeouts ~name
    ~spring_cloud_gateway_id ~open_api ~route __id =
  let (r : _ Tf_core.resource) =
    make ?filters ?id ?predicates ?protocol ?spring_cloud_app_id
      ?sso_validation_enabled ?timeouts ~name
      ~spring_cloud_gateway_id ~open_api ~route __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
