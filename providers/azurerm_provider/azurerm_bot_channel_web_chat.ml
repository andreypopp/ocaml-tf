(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_web_chat__site = {
  endpoint_parameters_enabled : bool prop option; [@option]
      (** endpoint_parameters_enabled *)
  name : string prop;  (** name *)
  storage_enabled : bool prop option; [@option]
      (** storage_enabled *)
  user_upload_enabled : bool prop option; [@option]
      (** user_upload_enabled *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_web_chat__site *)

type azurerm_bot_channel_web_chat__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_web_chat__timeouts *)

type azurerm_bot_channel_web_chat = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  site_names : string prop list option; [@option]  (** site_names *)
  site : azurerm_bot_channel_web_chat__site list;
  timeouts : azurerm_bot_channel_web_chat__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_web_chat *)

let azurerm_bot_channel_web_chat ?id ?site_names ?timeouts ~bot_name
    ~location ~resource_group_name ~site __resource_id =
  let __resource_type = "azurerm_bot_channel_web_chat" in
  let __resource =
    {
      bot_name;
      id;
      location;
      resource_group_name;
      site_names;
      site;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_web_chat __resource);
  ()
