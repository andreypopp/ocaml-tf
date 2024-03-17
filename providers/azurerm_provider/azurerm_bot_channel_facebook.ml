(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_facebook__page = {
  access_token : string prop;  (** access_token *)
  id : string prop;  (** id *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_facebook__page *)

type azurerm_bot_channel_facebook__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_facebook__timeouts *)

type azurerm_bot_channel_facebook = {
  bot_name : string prop;  (** bot_name *)
  facebook_application_id : string prop;
      (** facebook_application_id *)
  facebook_application_secret : string prop;
      (** facebook_application_secret *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  page : azurerm_bot_channel_facebook__page list;
  timeouts : azurerm_bot_channel_facebook__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_facebook *)

let azurerm_bot_channel_facebook ?id ?timeouts ~bot_name
    ~facebook_application_id ~facebook_application_secret ~location
    ~resource_group_name ~page __resource_id =
  let __resource_type = "azurerm_bot_channel_facebook" in
  let __resource =
    {
      bot_name;
      facebook_application_id;
      facebook_application_secret;
      id;
      location;
      resource_group_name;
      page;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_facebook __resource);
  ()
