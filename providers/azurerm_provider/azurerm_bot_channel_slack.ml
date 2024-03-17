(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_slack__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_slack__timeouts *)

type azurerm_bot_channel_slack = {
  bot_name : string prop;  (** bot_name *)
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
  id : string prop option; [@option]  (** id *)
  landing_page_url : string prop option; [@option]
      (** landing_page_url *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  signing_secret : string prop option; [@option]
      (** signing_secret *)
  verification_token : string prop;  (** verification_token *)
  timeouts : azurerm_bot_channel_slack__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_slack *)

let azurerm_bot_channel_slack ?id ?landing_page_url ?signing_secret
    ?timeouts ~bot_name ~client_id ~client_secret ~location
    ~resource_group_name ~verification_token __resource_id =
  let __resource_type = "azurerm_bot_channel_slack" in
  let __resource =
    {
      bot_name;
      client_id;
      client_secret;
      id;
      landing_page_url;
      location;
      resource_group_name;
      signing_secret;
      verification_token;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_slack __resource);
  ()
