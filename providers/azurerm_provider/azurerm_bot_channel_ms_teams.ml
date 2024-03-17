(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_ms_teams__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_ms_teams__timeouts *)

type azurerm_bot_channel_ms_teams = {
  bot_name : string;  (** bot_name *)
  calling_web_hook : string option; [@option]
      (** calling_web_hook *)
  deployment_environment : string option; [@option]
      (** deployment_environment *)
  enable_calling : bool option; [@option]  (** enable_calling *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts : azurerm_bot_channel_ms_teams__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_ms_teams *)

let azurerm_bot_channel_ms_teams ?calling_web_hook
    ?deployment_environment ?enable_calling ?id ?timeouts ~bot_name
    ~location ~resource_group_name __resource_id =
  let __resource_type = "azurerm_bot_channel_ms_teams" in
  let __resource =
    {
      bot_name;
      calling_web_hook;
      deployment_environment;
      enable_calling;
      id;
      location;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_ms_teams __resource);
  ()
