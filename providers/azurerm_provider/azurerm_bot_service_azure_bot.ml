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
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_service_azure_bot __resource);
  ()
