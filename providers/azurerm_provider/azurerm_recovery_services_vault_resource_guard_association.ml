(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_recovery_services_vault_resource_guard_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_recovery_services_vault_resource_guard_association__timeouts *)

type azurerm_recovery_services_vault_resource_guard_association = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  resource_guard_id : string prop;  (** resource_guard_id *)
  vault_id : string prop;  (** vault_id *)
  timeouts :
    azurerm_recovery_services_vault_resource_guard_association__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_recovery_services_vault_resource_guard_association *)

type t = {
  id : string prop;
  name : string prop;
  resource_guard_id : string prop;
  vault_id : string prop;
}

let azurerm_recovery_services_vault_resource_guard_association ?id
    ?name ?timeouts ~resource_guard_id ~vault_id __resource_id =
  let __resource_type =
    "azurerm_recovery_services_vault_resource_guard_association"
  in
  let __resource =
    ({ id; name; resource_guard_id; vault_id; timeouts }
      : azurerm_recovery_services_vault_resource_guard_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_recovery_services_vault_resource_guard_association
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_guard_id =
         Prop.computed __resource_type __resource_id
           "resource_guard_id";
       vault_id =
         Prop.computed __resource_type __resource_id "vault_id";
     }
      : t)
  in
  __resource_attributes
