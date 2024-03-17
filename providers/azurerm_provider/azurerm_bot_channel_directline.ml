(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_directline__site = {
  enabled : bool prop option; [@option]  (** enabled *)
  endpoint_parameters_enabled : bool prop option; [@option]
      (** endpoint_parameters_enabled *)
  enhanced_authentication_enabled : bool prop option; [@option]
      (** enhanced_authentication_enabled *)
  id : string prop;  (** id *)
  key : string prop;  (** key *)
  key2 : string prop;  (** key2 *)
  name : string prop;  (** name *)
  storage_enabled : bool prop option; [@option]
      (** storage_enabled *)
  trusted_origins : string prop list option; [@option]
      (** trusted_origins *)
  user_upload_enabled : bool prop option; [@option]
      (** user_upload_enabled *)
  v1_allowed : bool prop option; [@option]  (** v1_allowed *)
  v3_allowed : bool prop option; [@option]  (** v3_allowed *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_directline__site *)

type azurerm_bot_channel_directline__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_directline__timeouts *)

type azurerm_bot_channel_directline = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  site : azurerm_bot_channel_directline__site list;
  timeouts : azurerm_bot_channel_directline__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_directline *)

let azurerm_bot_channel_directline ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~site __resource_id =
  let __resource_type = "azurerm_bot_channel_directline" in
  let __resource =
    { bot_name; id; location; resource_group_name; site; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_directline __resource);
  ()
