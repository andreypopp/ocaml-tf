(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channels_registration__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channels_registration__timeouts *)

type azurerm_bot_channels_registration = {
  cmk_key_vault_url : string option; [@option]
      (** cmk_key_vault_url *)
  description : string option; [@option]  (** description *)
  endpoint : string option; [@option]  (** endpoint *)
  location : string;  (** location *)
  microsoft_app_id : string;  (** microsoft_app_id *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string;  (** sku *)
  streaming_endpoint_enabled : bool option; [@option]
      (** streaming_endpoint_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_bot_channels_registration__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channels_registration *)

let azurerm_bot_channels_registration ?cmk_key_vault_url ?description
    ?endpoint ?streaming_endpoint_enabled ?tags ?timeouts ~location
    ~microsoft_app_id ~name ~resource_group_name ~sku __resource_id =
  let __resource_type = "azurerm_bot_channels_registration" in
  let __resource =
    {
      cmk_key_vault_url;
      description;
      endpoint;
      location;
      microsoft_app_id;
      name;
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
