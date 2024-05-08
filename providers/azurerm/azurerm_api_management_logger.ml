(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type application_insights = { instrumentation_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : application_insights) -> ()

let yojson_of_application_insights =
  (function
   | { instrumentation_key = v_instrumentation_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_instrumentation_key
         in
         ("instrumentation_key", arg) :: bnds
       in
       `Assoc bnds
    : application_insights -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_application_insights

[@@@deriving.end]

type eventhub = {
  connection_string : string prop option; [@option]
  endpoint_uri : string prop option; [@option]
  name : string prop;
  user_assigned_identity_client_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : eventhub) -> ()

let yojson_of_eventhub =
  (function
   | {
       connection_string = v_connection_string;
       endpoint_uri = v_endpoint_uri;
       name = v_name;
       user_assigned_identity_client_id =
         v_user_assigned_identity_client_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_assigned_identity_client_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_assigned_identity_client_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_endpoint_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_connection_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connection_string", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : eventhub -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_eventhub

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

type azurerm_api_management_logger = {
  api_management_name : string prop;
  buffered : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  resource_id : string prop option; [@option]
  application_insights : application_insights list;
      [@default []] [@yojson_drop_default ( = )]
  eventhub : eventhub list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_api_management_logger) -> ()

let yojson_of_azurerm_api_management_logger =
  (function
   | {
       api_management_name = v_api_management_name;
       buffered = v_buffered;
       description = v_description;
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       resource_id = v_resource_id;
       application_insights = v_application_insights;
       eventhub = v_eventhub;
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
         if [] = v_eventhub then bnds
         else
           let arg =
             (yojson_of_list yojson_of_eventhub) v_eventhub
           in
           let bnd = "eventhub", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_application_insights then bnds
         else
           let arg =
             (yojson_of_list yojson_of_application_insights)
               v_application_insights
           in
           let bnd = "application_insights", arg in
           bnd :: bnds
       in
       let bnds =
         match v_resource_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_buffered with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "buffered", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_api_management_name
         in
         ("api_management_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_api_management_logger ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_api_management_logger

[@@@deriving.end]

let application_insights ~instrumentation_key () :
    application_insights =
  { instrumentation_key }

let eventhub ?connection_string ?endpoint_uri
    ?user_assigned_identity_client_id ~name () : eventhub =
  {
    connection_string;
    endpoint_uri;
    name;
    user_assigned_identity_client_id;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_api_management_logger ?buffered ?description ?id
    ?resource_id ?(application_insights = []) ?(eventhub = [])
    ?timeouts ~api_management_name ~name ~resource_group_name () :
    azurerm_api_management_logger =
  {
    api_management_name;
    buffered;
    description;
    id;
    name;
    resource_group_name;
    resource_id;
    application_insights;
    eventhub;
    timeouts;
  }

type t = {
  tf_name : string;
  api_management_name : string prop;
  buffered : bool prop;
  description : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_id : string prop;
}

let make ?buffered ?description ?id ?resource_id
    ?(application_insights = []) ?(eventhub = []) ?timeouts
    ~api_management_name ~name ~resource_group_name __id =
  let __type = "azurerm_api_management_logger" in
  let __attrs =
    ({
       tf_name = __id;
       api_management_name =
         Prop.computed __type __id "api_management_name";
       buffered = Prop.computed __type __id "buffered";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       resource_id = Prop.computed __type __id "resource_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_api_management_logger
        (azurerm_api_management_logger ?buffered ?description ?id
           ?resource_id ~application_insights ~eventhub ?timeouts
           ~api_management_name ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?buffered ?description ?id ?resource_id
    ?(application_insights = []) ?(eventhub = []) ?timeouts
    ~api_management_name ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?buffered ?description ?id ?resource_id
      ~application_insights ~eventhub ?timeouts ~api_management_name
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
