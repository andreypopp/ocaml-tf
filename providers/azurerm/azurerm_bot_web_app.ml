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

type azurerm_bot_web_app = {
  developer_app_insights_api_key : string prop option; [@option]
  developer_app_insights_application_id : string prop option;
      [@option]
  developer_app_insights_key : string prop option; [@option]
  display_name : string prop option; [@option]
  endpoint : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  luis_app_ids : string prop list option; [@option]
  luis_key : string prop option; [@option]
  microsoft_app_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_web_app) -> ()

let yojson_of_azurerm_bot_web_app =
  (function
   | {
       developer_app_insights_api_key =
         v_developer_app_insights_api_key;
       developer_app_insights_application_id =
         v_developer_app_insights_application_id;
       developer_app_insights_key = v_developer_app_insights_key;
       display_name = v_display_name;
       endpoint = v_endpoint;
       id = v_id;
       location = v_location;
       luis_app_ids = v_luis_app_ids;
       luis_key = v_luis_key;
       microsoft_app_id = v_microsoft_app_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_microsoft_app_id
         in
         ("microsoft_app_id", arg) :: bnds
       in
       let bnds =
         match v_luis_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "luis_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_luis_app_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "luis_app_ids", arg in
             bnd :: bnds
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
         match v_endpoint with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "endpoint", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_developer_app_insights_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "developer_app_insights_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_developer_app_insights_application_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "developer_app_insights_application_id", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_developer_app_insights_api_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "developer_app_insights_api_key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_bot_web_app -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_web_app

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_web_app ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?id
    ?luis_app_ids ?luis_key ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku () :
    azurerm_bot_web_app =
  {
    developer_app_insights_api_key;
    developer_app_insights_application_id;
    developer_app_insights_key;
    display_name;
    endpoint;
    id;
    location;
    luis_app_ids;
    luis_key;
    microsoft_app_id;
    name;
    resource_group_name;
    sku;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  developer_app_insights_api_key : string prop;
  developer_app_insights_application_id : string prop;
  developer_app_insights_key : string prop;
  display_name : string prop;
  endpoint : string prop;
  id : string prop;
  location : string prop;
  luis_app_ids : string list prop;
  luis_key : string prop;
  microsoft_app_id : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
}

let make ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?id
    ?luis_app_ids ?luis_key ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __id =
  let __type = "azurerm_bot_web_app" in
  let __attrs =
    ({
       tf_name = __id;
       developer_app_insights_api_key =
         Prop.computed __type __id "developer_app_insights_api_key";
       developer_app_insights_application_id =
         Prop.computed __type __id
           "developer_app_insights_application_id";
       developer_app_insights_key =
         Prop.computed __type __id "developer_app_insights_key";
       display_name = Prop.computed __type __id "display_name";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       luis_app_ids = Prop.computed __type __id "luis_app_ids";
       luis_key = Prop.computed __type __id "luis_key";
       microsoft_app_id =
         Prop.computed __type __id "microsoft_app_id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_web_app
        (azurerm_bot_web_app ?developer_app_insights_api_key
           ?developer_app_insights_application_id
           ?developer_app_insights_key ?display_name ?endpoint ?id
           ?luis_app_ids ?luis_key ?tags ?timeouts ~location
           ~microsoft_app_id ~name ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?id
    ?luis_app_ids ?luis_key ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?developer_app_insights_api_key
      ?developer_app_insights_application_id
      ?developer_app_insights_key ?display_name ?endpoint ?id
      ?luis_app_ids ?luis_key ?tags ?timeouts ~location
      ~microsoft_app_id ~name ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
