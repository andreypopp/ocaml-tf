(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_chaos_studio_capability__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_capability__timeouts *)

type azurerm_chaos_studio_capability = {
  capability_type : string;  (** capability_type *)
  chaos_studio_target_id : string;  (** chaos_studio_target_id *)
  timeouts : azurerm_chaos_studio_capability__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_capability *)

let azurerm_chaos_studio_capability ?timeouts ~capability_type
    ~chaos_studio_target_id __resource_id =
  let __resource_type = "azurerm_chaos_studio_capability" in
  let __resource =
    { capability_type; chaos_studio_target_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_chaos_studio_capability __resource);
  ()
