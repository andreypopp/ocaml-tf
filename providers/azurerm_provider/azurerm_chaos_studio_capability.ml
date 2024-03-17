(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_chaos_studio_capability__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_capability__timeouts *)

type azurerm_chaos_studio_capability = {
  capability_type : string prop;  (** capability_type *)
  chaos_studio_target_id : string prop;
      (** chaos_studio_target_id *)
  id : string prop option; [@option]  (** id *)
  timeouts : azurerm_chaos_studio_capability__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_capability *)

type t = {
  capability_type : string prop;
  chaos_studio_target_id : string prop;
  id : string prop;
  urn : string prop;
}

let azurerm_chaos_studio_capability ?id ?timeouts ~capability_type
    ~chaos_studio_target_id __resource_id =
  let __resource_type = "azurerm_chaos_studio_capability" in
  let __resource =
    ({ capability_type; chaos_studio_target_id; id; timeouts }
      : azurerm_chaos_studio_capability)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_chaos_studio_capability __resource);
  let __resource_attributes =
    ({
       capability_type =
         Prop.computed __resource_type __resource_id
           "capability_type";
       chaos_studio_target_id =
         Prop.computed __resource_type __resource_id
           "chaos_studio_target_id";
       id = Prop.computed __resource_type __resource_id "id";
       urn = Prop.computed __resource_type __resource_id "urn";
     }
      : t)
  in
  __resource_attributes
