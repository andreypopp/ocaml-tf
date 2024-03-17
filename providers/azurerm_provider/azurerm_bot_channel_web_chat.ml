(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_bot_channel_web_chat__site = {
  endpoint_parameters_enabled : bool option; [@option]
      (** endpoint_parameters_enabled *)
  name : string;  (** name *)
  storage_enabled : bool option; [@option]  (** storage_enabled *)
  user_upload_enabled : bool option; [@option]
      (** user_upload_enabled *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_web_chat__site *)

type azurerm_bot_channel_web_chat__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_web_chat__timeouts *)

type azurerm_bot_channel_web_chat = {
  bot_name : string;  (** bot_name *)
  location : string;  (** location *)
  resource_group_name : string;  (** resource_group_name *)
  site : azurerm_bot_channel_web_chat__site list;
  timeouts : azurerm_bot_channel_web_chat__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_web_chat *)

let azurerm_bot_channel_web_chat ?timeouts ~bot_name ~location
    ~resource_group_name ~site __resource_id =
  let __resource_type = "azurerm_bot_channel_web_chat" in
  let __resource =
    { bot_name; location; resource_group_name; site; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_web_chat __resource);
  ()
