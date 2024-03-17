(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lighthouse_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_lighthouse_assignment__timeouts *)

type azurerm_lighthouse_assignment = {
  id : string option; [@option]  (** id *)
  lighthouse_definition_id : string;  (** lighthouse_definition_id *)
  name : string option; [@option]  (** name *)
  scope : string;  (** scope *)
  timeouts : azurerm_lighthouse_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lighthouse_assignment *)

let azurerm_lighthouse_assignment ?id ?name ?timeouts
    ~lighthouse_definition_id ~scope __resource_id =
  let __resource_type = "azurerm_lighthouse_assignment" in
  let __resource =
    { id; lighthouse_definition_id; name; scope; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lighthouse_assignment __resource);
  ()
