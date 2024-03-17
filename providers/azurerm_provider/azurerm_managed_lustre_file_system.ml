(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_managed_lustre_file_system__encryption_key = {
  key_url : string;  (** key_url *)
  source_vault_id : string;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__encryption_key *)

type azurerm_managed_lustre_file_system__hsm_setting = {
  container_id : string;  (** container_id *)
  import_prefix : string option; [@option]  (** import_prefix *)
  logging_container_id : string;  (** logging_container_id *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__hsm_setting *)

type azurerm_managed_lustre_file_system__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__identity *)

type azurerm_managed_lustre_file_system__maintenance_window = {
  day_of_week : string;  (** day_of_week *)
  time_of_day_in_utc : string;  (** time_of_day_in_utc *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__maintenance_window *)

type azurerm_managed_lustre_file_system__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system__timeouts *)

type azurerm_managed_lustre_file_system = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string;  (** sku_name *)
  storage_capacity_in_tb : float;  (** storage_capacity_in_tb *)
  subnet_id : string;  (** subnet_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  zones : string list;  (** zones *)
  encryption_key :
    azurerm_managed_lustre_file_system__encryption_key list;
  hsm_setting : azurerm_managed_lustre_file_system__hsm_setting list;
  identity : azurerm_managed_lustre_file_system__identity list;
  maintenance_window :
    azurerm_managed_lustre_file_system__maintenance_window list;
  timeouts : azurerm_managed_lustre_file_system__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_managed_lustre_file_system *)

let azurerm_managed_lustre_file_system ?id ?tags ?timeouts ~location
    ~name ~resource_group_name ~sku_name ~storage_capacity_in_tb
    ~subnet_id ~zones ~encryption_key ~hsm_setting ~identity
    ~maintenance_window __resource_id =
  let __resource_type = "azurerm_managed_lustre_file_system" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      sku_name;
      storage_capacity_in_tb;
      subnet_id;
      tags;
      zones;
      encryption_key;
      hsm_setting;
      identity;
      maintenance_window;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_managed_lustre_file_system __resource);
  ()
