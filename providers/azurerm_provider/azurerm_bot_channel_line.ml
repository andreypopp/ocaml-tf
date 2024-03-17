(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_line__line_channel = {
  access_token : string prop;  (** access_token *)
  secret : string prop;  (** secret *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_line__line_channel *)

type azurerm_bot_channel_line__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_line__timeouts *)

type azurerm_bot_channel_line = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  line_channel : azurerm_bot_channel_line__line_channel list;
  timeouts : azurerm_bot_channel_line__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_line *)

let azurerm_bot_channel_line ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~line_channel __resource_id =
  let __resource_type = "azurerm_bot_channel_line" in
  let __resource =
    {
      bot_name;
      id;
      location;
      resource_group_name;
      line_channel;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_line __resource);
  ()
