(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_bot_channel_slack__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_slack__timeouts *)

type azurerm_bot_channel_slack = {
  bot_name : string;  (** bot_name *)
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
  landing_page_url : string option; [@option]
      (** landing_page_url *)
  location : string;  (** location *)
  resource_group_name : string;  (** resource_group_name *)
  signing_secret : string option; [@option]  (** signing_secret *)
  verification_token : string;  (** verification_token *)
  timeouts : azurerm_bot_channel_slack__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_slack *)

let azurerm_bot_channel_slack ?landing_page_url ?signing_secret
    ?timeouts ~bot_name ~client_id ~client_secret ~location
    ~resource_group_name ~verification_token __resource_id =
  let __resource_type = "azurerm_bot_channel_slack" in
  let __resource =
    {
      bot_name;
      client_id;
      client_secret;
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
