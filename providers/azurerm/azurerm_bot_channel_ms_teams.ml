(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_ms_teams__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_ms_teams__timeouts *)

type azurerm_bot_channel_ms_teams = {
  bot_name : string prop;  (** bot_name *)
  calling_web_hook : string prop option; [@option]
      (** calling_web_hook *)
  deployment_environment : string prop option; [@option]
      (** deployment_environment *)
  enable_calling : bool prop option; [@option]  (** enable_calling *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts : azurerm_bot_channel_ms_teams__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_ms_teams *)

type t = {
  bot_name : string prop;
  calling_web_hook : string prop;
  deployment_environment : string prop;
  enable_calling : bool prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
}

let azurerm_bot_channel_ms_teams ?calling_web_hook
    ?deployment_environment ?enable_calling ?id ?timeouts ~bot_name
    ~location ~resource_group_name __resource_id =
  let __resource_type = "azurerm_bot_channel_ms_teams" in
  let __resource =
    ({
       bot_name;
       calling_web_hook;
       deployment_environment;
       enable_calling;
       id;
       location;
       resource_group_name;
       timeouts;
     }
      : azurerm_bot_channel_ms_teams)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_ms_teams __resource);
  let __resource_attributes =
    ({
       bot_name =
         Prop.computed __resource_type __resource_id "bot_name";
       calling_web_hook =
         Prop.computed __resource_type __resource_id
           "calling_web_hook";
       deployment_environment =
         Prop.computed __resource_type __resource_id
           "deployment_environment";
       enable_calling =
         Prop.computed __resource_type __resource_id "enable_calling";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
     }
      : t)
  in
  __resource_attributes
