(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_chaos_studio_target = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  target_resource_id : string prop;  (** target_resource_id *)
  target_type : string prop;  (** target_type *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_target *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_chaos_studio_target ?id ?timeouts ~location
    ~target_resource_id ~target_type () : azurerm_chaos_studio_target
    =
  { id; location; target_resource_id; target_type; timeouts }

type t = {
  id : string prop;
  location : string prop;
  target_resource_id : string prop;
  target_type : string prop;
}

let register ?tf_module ?id ?timeouts ~location ~target_resource_id
    ~target_type __resource_id =
  let __resource_type = "azurerm_chaos_studio_target" in
  let __resource =
    azurerm_chaos_studio_target ?id ?timeouts ~location
      ~target_resource_id ~target_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_chaos_studio_target __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       target_resource_id =
         Prop.computed __resource_type __resource_id
           "target_resource_id";
       target_type =
         Prop.computed __resource_type __resource_id "target_type";
     }
      : t)
  in
  __resource_attributes
