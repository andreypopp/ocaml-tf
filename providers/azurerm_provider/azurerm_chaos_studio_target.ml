(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_chaos_studio_target__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_target__timeouts *)

type azurerm_chaos_studio_target = {
  location : string;  (** location *)
  target_resource_id : string;  (** target_resource_id *)
  target_type : string;  (** target_type *)
  timeouts : azurerm_chaos_studio_target__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_chaos_studio_target *)

let azurerm_chaos_studio_target ?timeouts ~location
    ~target_resource_id ~target_type __resource_id =
  let __resource_type = "azurerm_chaos_studio_target" in
  let __resource =
    { location; target_resource_id; target_type; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_chaos_studio_target __resource);
  ()
