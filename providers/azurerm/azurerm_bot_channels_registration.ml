(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_bot_channels_registration = {
  cmk_key_vault_url : string prop option; [@option]
      (** cmk_key_vault_url *)
  description : string prop option; [@option]  (** description *)
  developer_app_insights_api_key : string prop option; [@option]
      (** developer_app_insights_api_key *)
  developer_app_insights_application_id : string prop option;
      [@option]
      (** developer_app_insights_application_id *)
  developer_app_insights_key : string prop option; [@option]
      (** developer_app_insights_key *)
  display_name : string prop option; [@option]  (** display_name *)
  endpoint : string prop option; [@option]  (** endpoint *)
  icon_url : string prop option; [@option]  (** icon_url *)
  id : string prop option; [@option]  (** id *)
  isolated_network_enabled : bool prop option; [@option]
      (** isolated_network_enabled *)
  location : string prop;  (** location *)
  microsoft_app_id : string prop;  (** microsoft_app_id *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  streaming_endpoint_enabled : bool prop option; [@option]
      (** streaming_endpoint_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channels_registration *)

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
