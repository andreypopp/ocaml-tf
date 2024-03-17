(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_advanced_threat_protection__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_advanced_threat_protection__timeouts *)

type azurerm_advanced_threat_protection = {
  enabled : bool;  (** enabled *)
  id : string option; [@option]  (** id *)
  target_resource_id : string;  (** target_resource_id *)
  timeouts : azurerm_advanced_threat_protection__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_advanced_threat_protection *)

let azurerm_advanced_threat_protection ?id ?timeouts ~enabled
    ~target_resource_id __resource_id =
  let __resource_type = "azurerm_advanced_threat_protection" in
  let __resource = { enabled; id; target_resource_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_advanced_threat_protection __resource);
  ()
