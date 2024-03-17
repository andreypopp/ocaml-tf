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

let azurerm_chaos_studio_capability ?id ?timeouts ~capability_type
    ~chaos_studio_target_id __resource_id =
  let __resource_type = "azurerm_chaos_studio_capability" in
  let __resource =
    { capability_type; chaos_studio_target_id; id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_chaos_studio_capability __resource);
  ()
