(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_line__line_channel = {
  access_token : string;  (** access_token *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_line__line_channel *)

type azurerm_bot_channel_line__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_line__timeouts *)

type azurerm_bot_channel_line = {
  bot_name : string;  (** bot_name *)
  location : string;  (** location *)
  resource_group_name : string;  (** resource_group_name *)
  line_channel : azurerm_bot_channel_line__line_channel list;
  timeouts : azurerm_bot_channel_line__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_line *)

let azurerm_bot_channel_line ?timeouts ~bot_name ~location
    ~resource_group_name ~line_channel __resource_id =
  let __resource_type = "azurerm_bot_channel_line" in
  let __resource =
    {
      bot_name;
      location;
      resource_group_name;
      line_channel;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_line __resource);
  ()
