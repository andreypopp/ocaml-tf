(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?collation ?create_mode ?data_encrypted
    ?geo_backup_policy_enabled ?id ?recovery_database_id
    ?storage_account_type ?tags ?timeouts ~name ~sku_name
    ~synapse_workspace_id ~restore __id =
  let __type = "azurerm_synapse_sql_pool" in
  let __attrs =
    ({
       collation = Prop.computed __type __id "collation";
       create_mode = Prop.computed __type __id "create_mode";
       data_encrypted = Prop.computed __type __id "data_encrypted";
       geo_backup_policy_enabled =
         Prop.computed __type __id "geo_backup_policy_enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       recovery_database_id =
         Prop.computed __type __id "recovery_database_id";
       sku_name = Prop.computed __type __id "sku_name";
       storage_account_type =
         Prop.computed __type __id "storage_account_type";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_sql_pool
        (azurerm_synapse_sql_pool ?collation ?create_mode
           ?data_encrypted ?geo_backup_policy_enabled ?id
           ?recovery_database_id ?storage_account_type ?tags
           ?timeouts ~name ~sku_name ~synapse_workspace_id ~restore
           ());
    attrs = __attrs;
  }

let register ?tf_module ?collation ?create_mode ?data_encrypted
    ?geo_backup_policy_enabled ?id ?recovery_database_id
    ?storage_account_type ?tags ?timeouts ~name ~sku_name
    ~synapse_workspace_id ~restore __id =
  let (r : _ Tf_core.resource) =
    make ?collation ?create_mode ?data_encrypted
      ?geo_backup_policy_enabled ?id ?recovery_database_id
      ?storage_account_type ?tags ?timeouts ~name ~sku_name
      ~synapse_workspace_id ~restore __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
