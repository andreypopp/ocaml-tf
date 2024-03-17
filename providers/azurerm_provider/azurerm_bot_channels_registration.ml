(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channels_registration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channels_registration__timeouts *)

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
  timeouts : azurerm_bot_channels_registration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channels_registration *)

let azurerm_bot_channels_registration ?cmk_key_vault_url ?description
    ?developer_app_insights_api_key
    ?developer_app_insights_application_id
    ?developer_app_insights_key ?display_name ?endpoint ?icon_url ?id
    ?isolated_network_enabled ?public_network_access_enabled
    ?streaming_endpoint_enabled ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_bot_channels_registration" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channels_registration __resource);
  ()
