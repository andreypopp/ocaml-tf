(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_protection_backup_vault__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_vault__identity *)

type azurerm_data_protection_backup_vault__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_vault__timeouts *)

type azurerm_data_protection_backup_vault = {
  datastore_type : string;  (** datastore_type *)
  location : string;  (** location *)
  name : string;  (** name *)
  redundancy : string;  (** redundancy *)
  resource_group_name : string;  (** resource_group_name *)
  retention_duration_in_days : float option; [@option]
      (** retention_duration_in_days *)
  soft_delete : string option; [@option]  (** soft_delete *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_data_protection_backup_vault__identity list;
  timeouts : azurerm_data_protection_backup_vault__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_vault *)

let azurerm_data_protection_backup_vault ?retention_duration_in_days
    ?soft_delete ?tags ?timeouts ~datastore_type ~location ~name
    ~redundancy ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_data_protection_backup_vault" in
  let __resource =
    {
      datastore_type;
      location;
      name;
      redundancy;
      resource_group_name;
      retention_duration_in_days;
      soft_delete;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_protection_backup_vault __resource);
  ()
