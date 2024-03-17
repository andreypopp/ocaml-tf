(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_service_azure_bot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_service_azure_bot__timeouts *)

type azurerm_bot_service_azure_bot = {
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
  local_authentication_enabled : bool prop option; [@option]
      (** local_authentication_enabled *)
  location : string prop;  (** location *)
  luis_app_ids : string prop list option; [@option]
      (** luis_app_ids *)
  luis_key : string prop option; [@option]  (** luis_key *)
  microsoft_app_id : string prop;  (** microsoft_app_id *)
  microsoft_app_msi_id : string prop option; [@option]
      (** microsoft_app_msi_id *)
  microsoft_app_tenant_id : string prop option; [@option]
      (** microsoft_app_tenant_id *)
  microsoft_app_type : string prop option; [@option]
      (** microsoft_app_type *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop;  (** sku *)
  streaming_endpoint_enabled : bool prop option; [@option]
      (** streaming_endpoint_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_bot_service_azure_bot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_service_azure_bot *)

type t = {
  developer_app_insights_api_key : string prop;
  developer_app_insights_application_id : string prop;
  developer_app_insights_key : string prop;
  display_name : string prop;
  endpoint : string prop;
  icon_url : string prop;
  id : string prop;
  local_authentication_enabled : bool prop;
  location : string prop;
  luis_app_ids : string list prop;
  luis_key : string prop;
  microsoft_app_id : string prop;
  microsoft_app_msi_id : string prop;
  microsoft_app_tenant_id : string prop;
  microsoft_app_type : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  streaming_endpoint_enabled : bool prop;
  tags : (string * string) list prop;
}

let azurerm_bot_service_azure_bot ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?icon_url ?id
    ?local_authentication_enabled ?luis_app_ids ?luis_key
    ?microsoft_app_msi_id ?microsoft_app_tenant_id
    ?microsoft_app_type ?public_network_access_enabled
    ?streaming_endpoint_enabled ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_bot_service_azure_bot" in
  let __resource =
    ({
       developer_app_insights_api_key;
       developer_app_insights_application_id;
       developer_app_insights_key;
       display_name;
       endpoint;
       icon_url;
       id;
       local_authentication_enabled;
       location;
       luis_app_ids;
       luis_key;
       microsoft_app_id;
       microsoft_app_msi_id;
       microsoft_app_tenant_id;
       microsoft_app_type;
       name;
       public_network_access_enabled;
       resource_group_name;
       sku;
       streaming_endpoint_enabled;
       tags;
       timeouts;
     }
      : azurerm_bot_service_azure_bot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_service_azure_bot __resource);
  let __resource_attributes =
    ({
       developer_app_insights_api_key =
         Prop.computed __resource_type __resource_id
           "developer_app_insights_api_key";
       developer_app_insights_application_id =
         Prop.computed __resource_type __resource_id
           "developer_app_insights_application_id";
       developer_app_insights_key =
         Prop.computed __resource_type __resource_id
           "developer_app_insights_key";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       endpoint =
         Prop.computed __resource_type __resource_id "endpoint";
       icon_url =
         Prop.computed __resource_type __resource_id "icon_url";
       id = Prop.computed __resource_type __resource_id "id";
       local_authentication_enabled =
         Prop.computed __resource_type __resource_id
           "local_authentication_enabled";
       location =
         Prop.computed __resource_type __resource_id "location";
       luis_app_ids =
         Prop.computed __resource_type __resource_id "luis_app_ids";
       luis_key =
         Prop.computed __resource_type __resource_id "luis_key";
       microsoft_app_id =
         Prop.computed __resource_type __resource_id
           "microsoft_app_id";
       microsoft_app_msi_id =
         Prop.computed __resource_type __resource_id
           "microsoft_app_msi_id";
       microsoft_app_tenant_id =
         Prop.computed __resource_type __resource_id
           "microsoft_app_tenant_id";
       microsoft_app_type =
         Prop.computed __resource_type __resource_id
           "microsoft_app_type";
       name = Prop.computed __resource_type __resource_id "name";
       public_network_access_enabled =
         Prop.computed __resource_type __resource_id
           "public_network_access_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku = Prop.computed __resource_type __resource_id "sku";
       streaming_endpoint_enabled =
         Prop.computed __resource_type __resource_id
           "streaming_endpoint_enabled";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
