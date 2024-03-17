(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_directline__site = {
  enabled : bool option; [@option]  (** enabled *)
  endpoint_parameters_enabled : bool option; [@option]
      (** endpoint_parameters_enabled *)
  enhanced_authentication_enabled : bool option; [@option]
      (** enhanced_authentication_enabled *)
  id : string;  (** id *)
  key : string;  (** key *)
  key2 : string;  (** key2 *)
  name : string;  (** name *)
  storage_enabled : bool option; [@option]  (** storage_enabled *)
  trusted_origins : string list option; [@option]
      (** trusted_origins *)
  user_upload_enabled : bool option; [@option]
      (** user_upload_enabled *)
  v1_allowed : bool option; [@option]  (** v1_allowed *)
  v3_allowed : bool option; [@option]  (** v3_allowed *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_directline__site *)

type azurerm_bot_channel_directline__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_directline__timeouts *)

type azurerm_bot_channel_directline = {
  bot_name : string;  (** bot_name *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  resource_group_name : string;  (** resource_group_name *)
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
