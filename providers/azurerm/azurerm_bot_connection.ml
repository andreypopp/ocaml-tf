(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_bot_connection = {
  bot_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  parameters : string prop Tf_core.assoc option; [@option]
  resource_group_name : string prop;
  scopes : string prop option; [@option]
  service_provider_name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_connection) -> ()

let yojson_of_azurerm_bot_connection =
  (function
   | {
       bot_name = v_bot_name;
       client_id = v_client_id;
       client_secret = v_client_secret;
       id = v_id;
       location = v_location;
       name = v_name;
       parameters = v_parameters;
       resource_group_name = v_resource_group_name;
       scopes = v_scopes;
       service_provider_name = v_service_provider_name;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_service_provider_name
         in
         ("service_provider_name", arg) :: bnds
       in
       let bnds =
         match v_scopes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scopes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         match v_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_client_secret in
         ("client_secret", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_client_id in
         ("client_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_name in
         ("bot_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_bot_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_connection

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_connection ?id ?parameters ?scopes ?tags ?timeouts
    ~bot_name ~client_id ~client_secret ~location ~name
    ~resource_group_name ~service_provider_name () :
    azurerm_bot_connection =
  {
    bot_name;
    client_id;
    client_secret;
    id;
    location;
    name;
    parameters;
    resource_group_name;
    scopes;
    service_provider_name;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  bot_name : string prop;
  client_id : string prop;
  client_secret : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  parameters : string Tf_core.assoc prop;
  resource_group_name : string prop;
  scopes : string prop;
  service_provider_name : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?parameters ?scopes ?tags ?timeouts ~bot_name ~client_id
    ~client_secret ~location ~name ~resource_group_name
    ~service_provider_name __id =
  let __type = "azurerm_bot_connection" in
  let __attrs =
    ({
       tf_name = __id;
       bot_name = Prop.computed __type __id "bot_name";
       client_id = Prop.computed __type __id "client_id";
       client_secret = Prop.computed __type __id "client_secret";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       parameters = Prop.computed __type __id "parameters";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       scopes = Prop.computed __type __id "scopes";
       service_provider_name =
         Prop.computed __type __id "service_provider_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_connection
        (azurerm_bot_connection ?id ?parameters ?scopes ?tags
           ?timeouts ~bot_name ~client_id ~client_secret ~location
           ~name ~resource_group_name ~service_provider_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?parameters ?scopes ?tags ?timeouts
    ~bot_name ~client_id ~client_secret ~location ~name
    ~resource_group_name ~service_provider_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?parameters ?scopes ?tags ?timeouts ~bot_name ~client_id
      ~client_secret ~location ~name ~resource_group_name
      ~service_provider_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
