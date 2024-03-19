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

type azurerm_logic_app_trigger_custom = {
  body : string prop;  (** body *)
  id : string prop option; [@option]  (** id *)
  logic_app_id : string prop;  (** logic_app_id *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_trigger_custom *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logic_app_trigger_custom ?id ?timeouts ~body
    ~logic_app_id ~name () : azurerm_logic_app_trigger_custom =
  { body; id; logic_app_id; name; timeouts }

type t = {
  body : string prop;
  id : string prop;
  logic_app_id : string prop;
  name : string prop;
}

let register ?tf_module ?id ?timeouts ~body ~logic_app_id ~name
    __resource_id =
  let __resource_type = "azurerm_logic_app_trigger_custom" in
  let __resource =
    azurerm_logic_app_trigger_custom ?id ?timeouts ~body
      ~logic_app_id ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_trigger_custom __resource);
  let __resource_attributes =
    ({
       body = Prop.computed __resource_type __resource_id "body";
       id = Prop.computed __resource_type __resource_id "id";
       logic_app_id =
         Prop.computed __resource_type __resource_id "logic_app_id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
