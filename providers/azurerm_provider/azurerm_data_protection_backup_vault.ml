(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_protection_backup_vault__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_vault__identity *)

type azurerm_data_protection_backup_vault__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_vault__timeouts *)

type azurerm_data_protection_backup_vault = {
  datastore_type : string prop;  (** datastore_type *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  redundancy : string prop;  (** redundancy *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_duration_in_days : float prop option; [@option]
      (** retention_duration_in_days *)
  soft_delete : string prop option; [@option]  (** soft_delete *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_data_protection_backup_vault__identity list;
  timeouts : azurerm_data_protection_backup_vault__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_protection_backup_vault *)

let azurerm_data_protection_backup_vault ?id
    ?retention_duration_in_days ?soft_delete ?tags ?timeouts
    ~datastore_type ~location ~name ~redundancy ~resource_group_name
    ~identity __resource_id =
  let __resource_type = "azurerm_data_protection_backup_vault" in
  let __resource =
    {
      datastore_type;
      id;
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
