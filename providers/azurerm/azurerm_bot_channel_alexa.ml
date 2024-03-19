(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_bot_channel_alexa = {
  bot_name : string prop;  (** bot_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  resource_group_name : string prop;  (** resource_group_name *)
  skill_id : string prop;  (** skill_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_bot_channel_alexa *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_bot_channel_alexa ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~skill_id () : azurerm_bot_channel_alexa =
  { bot_name; id; location; resource_group_name; skill_id; timeouts }

type t = {
  bot_name : string prop;
  id : string prop;
  location : string prop;
  resource_group_name : string prop;
  skill_id : string prop;
}

let register ?tf_module ?id ?timeouts ~bot_name ~location
    ~resource_group_name ~skill_id __resource_id =
  let __resource_type = "azurerm_bot_channel_alexa" in
  let __resource =
    azurerm_bot_channel_alexa ?id ?timeouts ~bot_name ~location
      ~resource_group_name ~skill_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_bot_channel_alexa __resource);
  let __resource_attributes =
    ({
       bot_name =
         Prop.computed __resource_type __resource_id "bot_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       skill_id =
         Prop.computed __resource_type __resource_id "skill_id";
     }
      : t)
  in
  __resource_attributes
