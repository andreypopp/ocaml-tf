(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_facebook__page = {
  access_token : string;  (** access_token *)
  id : string;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_facebook__page *)

type azurerm_bot_channel_facebook__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_facebook__timeouts *)

type azurerm_bot_channel_facebook = {
  bot_name : string;  (** bot_name *)
  facebook_application_id : string;  (** facebook_application_id *)
  facebook_application_secret : string;
      (** facebook_application_secret *)
  location : string;  (** location *)
  resource_group_name : string;  (** resource_group_name *)
  page : azurerm_bot_channel_facebook__page list;
  timeouts : azurerm_bot_channel_facebook__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_facebook *)

let azurerm_bot_channel_facebook ?timeouts ~bot_name
    ~facebook_application_id ~facebook_application_secret ~location
    ~resource_group_name ~page __resource_id =
  let __resource_type = "azurerm_bot_channel_facebook" in
  let __resource =
    {
      bot_name;
      facebook_application_id;
      facebook_application_secret;
      location;
      resource_group_name;
      page;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_facebook __resource);
  ()
