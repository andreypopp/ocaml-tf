(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_resource_guard__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_resource_guard__timeouts *)

type azurerm_data_protection_resource_guard = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  vault_critical_operation_exclusion_list : string list option;
      [@option]
      (** vault_critical_operation_exclusion_list *)
  timeouts : azurerm_data_protection_resource_guard__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_resource_guard *)

let azurerm_data_protection_resource_guard ?id ?tags
    ?vault_critical_operation_exclusion_list ?timeouts ~location
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_data_protection_resource_guard" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      tags;
      vault_critical_operation_exclusion_list;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_resource_guard __resource);
  ()
