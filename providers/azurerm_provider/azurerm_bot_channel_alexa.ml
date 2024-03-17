(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_bot_channel_alexa__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_bot_channel_alexa__timeouts *)

type azurerm_bot_channel_alexa = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  skill_id : string prop;  (** skill_id *)
  timeouts : azurerm_bot_channel_alexa__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_alexa *)

let azurerm_bot_channel_alexa ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~skill_id __resource_id =
  let __resource_type = "azurerm_bot_channel_alexa" in
  let __resource =
    {
      bot_name;
      id;
      location;
      resource_group_name;
      skill_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_alexa __resource);
  ()
