(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_synapse_sql_pool__restore = {
  point_in_time : string;  (** point_in_time *)
  source_database_id : string;  (** source_database_id *)
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool__restore *)

type azurerm_synapse_sql_pool__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool__timeouts *)

type azurerm_synapse_sql_pool = {
  create_mode : string option; [@option]  (** create_mode *)
  data_encrypted : bool option; [@option]  (** data_encrypted *)
  geo_backup_policy_enabled : bool option; [@option]
      (** geo_backup_policy_enabled *)
  name : string;  (** name *)
  recovery_database_id : string option; [@option]
      (** recovery_database_id *)
  sku_name : string;  (** sku_name *)
  storage_account_type : string option; [@option]
      (** storage_account_type *)
  synapse_workspace_id : string;  (** synapse_workspace_id *)
  tags : (string * string) list option; [@option]  (** tags *)
  restore : azurerm_synapse_sql_pool__restore list;
  timeouts : azurerm_synapse_sql_pool__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool *)

let azurerm_synapse_sql_pool ?create_mode ?data_encrypted
    ?geo_backup_policy_enabled ?recovery_database_id
    ?storage_account_type ?tags ?timeouts ~name ~sku_name
    ~synapse_workspace_id ~restore __resource_id =
  let __resource_type = "azurerm_synapse_sql_pool" in
  let __resource =
    {
      create_mode;
      data_encrypted;
      geo_backup_policy_enabled;
      name;
      recovery_database_id;
      sku_name;
      storage_account_type;
      synapse_workspace_id;
      tags;
      restore;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_sql_pool __resource);
  ()
