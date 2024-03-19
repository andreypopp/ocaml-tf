(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type restore = {
  point_in_time : string prop;  (** point_in_time *)
  source_database_id : string prop;  (** source_database_id *)
}
[@@deriving yojson_of]
(** restore *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_synapse_sql_pool = {
  collation : string prop option; [@option]  (** collation *)
  create_mode : string prop option; [@option]  (** create_mode *)
  data_encrypted : bool prop option; [@option]  (** data_encrypted *)
  geo_backup_policy_enabled : bool prop option; [@option]
      (** geo_backup_policy_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  recovery_database_id : string prop option; [@option]
      (** recovery_database_id *)
  sku_name : string prop;  (** sku_name *)
  storage_account_type : string prop option; [@option]
      (** storage_account_type *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  restore : restore list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool *)

let restore ~point_in_time ~source_database_id () : restore =
  { point_in_time; source_database_id }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_sql_pool ?collation ?create_mode ?data_encrypted
    ?geo_backup_policy_enabled ?id ?recovery_database_id
    ?storage_account_type ?tags ?timeouts ~name ~sku_name
    ~synapse_workspace_id ~restore () : azurerm_synapse_sql_pool =
  {
    collation;
    create_mode;
    data_encrypted;
    geo_backup_policy_enabled;
    id;
    name;
    recovery_database_id;
    sku_name;
    storage_account_type;
    synapse_workspace_id;
    tags;
    restore;
    timeouts;
  }

type t = {
  collation : string prop;
  create_mode : string prop;
  data_encrypted : bool prop;
  geo_backup_policy_enabled : bool prop;
  id : string prop;
  name : string prop;
  recovery_database_id : string prop;
  sku_name : string prop;
  storage_account_type : string prop;
  synapse_workspace_id : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?collation ?create_mode ?data_encrypted
    ?geo_backup_policy_enabled ?id ?recovery_database_id
    ?storage_account_type ?tags ?timeouts ~name ~sku_name
    ~synapse_workspace_id ~restore __resource_id =
  let __resource_type = "azurerm_synapse_sql_pool" in
  let __resource =
    azurerm_synapse_sql_pool ?collation ?create_mode ?data_encrypted
      ?geo_backup_policy_enabled ?id ?recovery_database_id
      ?storage_account_type ?tags ?timeouts ~name ~sku_name
      ~synapse_workspace_id ~restore ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_sql_pool __resource);
  let __resource_attributes =
    ({
       collation =
         Prop.computed __resource_type __resource_id "collation";
       create_mode =
         Prop.computed __resource_type __resource_id "create_mode";
       data_encrypted =
         Prop.computed __resource_type __resource_id "data_encrypted";
       geo_backup_policy_enabled =
         Prop.computed __resource_type __resource_id
           "geo_backup_policy_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       recovery_database_id =
         Prop.computed __resource_type __resource_id
           "recovery_database_id";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       storage_account_type =
         Prop.computed __resource_type __resource_id
           "storage_account_type";
       synapse_workspace_id =
         Prop.computed __resource_type __resource_id
           "synapse_workspace_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
