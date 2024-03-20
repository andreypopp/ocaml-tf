(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_kusto_cosmosdb_data_connection = {
  cosmosdb_container_id : string prop;  (** cosmosdb_container_id *)
  id : string prop option; [@option]  (** id *)
  kusto_database_id : string prop;  (** kusto_database_id *)
  location : string prop;  (** location *)
  managed_identity_id : string prop;  (** managed_identity_id *)
  mapping_rule_name : string prop option; [@option]
      (** mapping_rule_name *)
  name : string prop;  (** name *)
  retrieval_start_date : string prop option; [@option]
      (** retrieval_start_date *)
  table_name : string prop;  (** table_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_kusto_cosmosdb_data_connection *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_kusto_cosmosdb_data_connection ?id ?mapping_rule_name
    ?retrieval_start_date ?timeouts ~cosmosdb_container_id
    ~kusto_database_id ~location ~managed_identity_id ~name
    ~table_name () : azurerm_kusto_cosmosdb_data_connection =
  {
    cosmosdb_container_id;
    id;
    kusto_database_id;
    location;
    managed_identity_id;
    mapping_rule_name;
    name;
    retrieval_start_date;
    table_name;
    timeouts;
  }

type t = {
  cosmosdb_container_id : string prop;
  id : string prop;
  kusto_database_id : string prop;
  location : string prop;
  managed_identity_id : string prop;
  mapping_rule_name : string prop;
  name : string prop;
  retrieval_start_date : string prop;
  table_name : string prop;
}

let make ?id ?mapping_rule_name ?retrieval_start_date ?timeouts
    ~cosmosdb_container_id ~kusto_database_id ~location
    ~managed_identity_id ~name ~table_name __id =
  let __type = "azurerm_kusto_cosmosdb_data_connection" in
  let __attrs =
    ({
       cosmosdb_container_id =
         Prop.computed __type __id "cosmosdb_container_id";
       id = Prop.computed __type __id "id";
       kusto_database_id =
         Prop.computed __type __id "kusto_database_id";
       location = Prop.computed __type __id "location";
       managed_identity_id =
         Prop.computed __type __id "managed_identity_id";
       mapping_rule_name =
         Prop.computed __type __id "mapping_rule_name";
       name = Prop.computed __type __id "name";
       retrieval_start_date =
         Prop.computed __type __id "retrieval_start_date";
       table_name = Prop.computed __type __id "table_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_cosmosdb_data_connection
        (azurerm_kusto_cosmosdb_data_connection ?id
           ?mapping_rule_name ?retrieval_start_date ?timeouts
           ~cosmosdb_container_id ~kusto_database_id ~location
           ~managed_identity_id ~name ~table_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mapping_rule_name ?retrieval_start_date
    ?timeouts ~cosmosdb_container_id ~kusto_database_id ~location
    ~managed_identity_id ~name ~table_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mapping_rule_name ?retrieval_start_date ?timeouts
      ~cosmosdb_container_id ~kusto_database_id ~location
      ~managed_identity_id ~name ~table_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
