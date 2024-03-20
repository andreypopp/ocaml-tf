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

type azurerm_bot_channels_registration = {
  cmk_key_vault_url : string prop option; [@option]
  description : string prop option; [@option]
  developer_app_insights_api_key : string prop option; [@option]
  developer_app_insights_application_id : string prop option;
      [@option]
  developer_app_insights_key : string prop option; [@option]
  display_name : string prop option; [@option]
  endpoint : string prop option; [@option]
  icon_url : string prop option; [@option]
  id : string prop option; [@option]
  isolated_network_enabled : bool prop option; [@option]
  location : string prop;
  microsoft_app_id : string prop;
  name : string prop;
  public_network_access_enabled : bool prop option; [@option]
  resource_group_name : string prop;
  sku : string prop;
  streaming_endpoint_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_bot_channels_registration) -> ()

let yojson_of_azurerm_bot_channels_registration =
  (function
   | {
       cmk_key_vault_url = v_cmk_key_vault_url;
       description = v_description;
       developer_app_insights_api_key =
         v_developer_app_insights_api_key;
       developer_app_insights_application_id =
         v_developer_app_insights_application_id;
       developer_app_insights_key = v_developer_app_insights_key;
       display_name = v_display_name;
       endpoint = v_endpoint;
       icon_url = v_icon_url;
       id = v_id;
       isolated_network_enabled = v_isolated_network_enabled;
       location = v_location;
       microsoft_app_id = v_microsoft_app_id;
       name = v_name;
       public_network_access_enabled =
         v_public_network_access_enabled;
       resource_group_name = v_resource_group_name;
       sku = v_sku;
       streaming_endpoint_enabled = v_streaming_endpoint_enabled;
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
         match v_streaming_endpoint_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "streaming_endpoint_enabled", arg in
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
         match v_public_network_access_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "public_network_access_enabled", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_isolated_network_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "isolated_network_enabled", arg in
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
         match v_icon_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "icon_url", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cmk_key_vault_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cmk_key_vault_url", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_bot_channels_registration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_bot_channels_registration

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channels_registration ?cmk_key_vault_url ?description
    ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?icon_url ?id
    ?isolated_network_enabled ?public_network_access_enabled
    ?streaming_endpoint_enabled ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku () :
    azurerm_bot_channels_registration =
  {
    cmk_key_vault_url;
    description;
    developer_app_insights_api_key;
    developer_app_insights_application_id;
    developer_app_insights_key;
    display_name;
    endpoint;
    icon_url;
    id;
    isolated_network_enabled;
    location;
    microsoft_app_id;
    name;
    public_network_access_enabled;
    resource_group_name;
    sku;
    streaming_endpoint_enabled;
    tags;
    timeouts;
  }

type t = {
  cmk_key_vault_url : string prop;
  description : string prop;
  developer_app_insights_api_key : string prop;
  developer_app_insights_application_id : string prop;
  developer_app_insights_key : string prop;
  display_name : string prop;
  endpoint : string prop;
  icon_url : string prop;
  id : string prop;
  isolated_network_enabled : bool prop;
  location : string prop;
  microsoft_app_id : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  streaming_endpoint_enabled : bool prop;
  tags : (string * string) list prop;
}

let make ?cmk_key_vault_url ?description
    ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?icon_url ?id
    ?isolated_network_enabled ?public_network_access_enabled
    ?streaming_endpoint_enabled ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __id =
  let __type = "azurerm_bot_channels_registration" in
  let __attrs =
    ({
       cmk_key_vault_url =
         Prop.computed __type __id "cmk_key_vault_url";
       description = Prop.computed __type __id "description";
       developer_app_insights_api_key =
         Prop.computed __type __id "developer_app_insights_api_key";
       developer_app_insights_application_id =
         Prop.computed __type __id
           "developer_app_insights_application_id";
       developer_app_insights_key =
         Prop.computed __type __id "developer_app_insights_key";
       display_name = Prop.computed __type __id "display_name";
       endpoint = Prop.computed __type __id "endpoint";
       icon_url = Prop.computed __type __id "icon_url";
       id = Prop.computed __type __id "id";
       isolated_network_enabled =
         Prop.computed __type __id "isolated_network_enabled";
       location = Prop.computed __type __id "location";
       microsoft_app_id =
         Prop.computed __type __id "microsoft_app_id";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       streaming_endpoint_enabled =
         Prop.computed __type __id "streaming_endpoint_enabled";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_bot_channels_registration
        (azurerm_bot_channels_registration ?cmk_key_vault_url
           ?description ?developer_app_insights_api_key
           ?developer_app_insights_application_id
           ?developer_app_insights_key ?display_name ?endpoint
           ?icon_url ?id ?isolated_network_enabled
           ?public_network_access_enabled ?streaming_endpoint_enabled
           ?tags ?timeouts ~location ~microsoft_app_id ~name
           ~resource_group_name ~sku ());
    attrs = __attrs;
  }

let register ?tf_module ?cmk_key_vault_url ?description
    ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?icon_url ?id
    ?isolated_network_enabled ?public_network_access_enabled
    ?streaming_endpoint_enabled ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __id =
  let (r : _ Tf_core.resource) =
    make ?cmk_key_vault_url ?description
      ?developer_app_insights_api_key
      ?developer_app_insights_application_id
      ?developer_app_insights_key ?display_name ?endpoint ?icon_url
      ?id ?isolated_network_enabled ?public_network_access_enabled
      ?streaming_endpoint_enabled ?tags ?timeouts ~location
      ~microsoft_app_id ~name ~resource_group_name ~sku __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
