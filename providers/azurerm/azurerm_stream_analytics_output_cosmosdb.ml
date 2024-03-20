(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_stream_analytics_output_cosmosdb = {
  container_name : string prop;  (** container_name *)
  cosmosdb_account_key : string prop;  (** cosmosdb_account_key *)
  cosmosdb_sql_database_id : string prop;
      (** cosmosdb_sql_database_id *)
  document_id : string prop option; [@option]  (** document_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_key : string prop option; [@option]  (** partition_key *)
  stream_analytics_job_id : string prop;
      (** stream_analytics_job_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_cosmosdb *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_cosmosdb ?document_id ?id
    ?partition_key ?timeouts ~container_name ~cosmosdb_account_key
    ~cosmosdb_sql_database_id ~name ~stream_analytics_job_id () :
    azurerm_stream_analytics_output_cosmosdb =
  {
    container_name;
    cosmosdb_account_key;
    cosmosdb_sql_database_id;
    document_id;
    id;
    name;
    partition_key;
    stream_analytics_job_id;
    timeouts;
  }

type t = {
  container_name : string prop;
  cosmosdb_account_key : string prop;
  cosmosdb_sql_database_id : string prop;
  document_id : string prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  stream_analytics_job_id : string prop;
}

let make ?document_id ?id ?partition_key ?timeouts ~container_name
    ~cosmosdb_account_key ~cosmosdb_sql_database_id ~name
    ~stream_analytics_job_id __id =
  let __type = "azurerm_stream_analytics_output_cosmosdb" in
  let __attrs =
    ({
       container_name = Prop.computed __type __id "container_name";
       cosmosdb_account_key =
         Prop.computed __type __id "cosmosdb_account_key";
       cosmosdb_sql_database_id =
         Prop.computed __type __id "cosmosdb_sql_database_id";
       document_id = Prop.computed __type __id "document_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partition_key = Prop.computed __type __id "partition_key";
       stream_analytics_job_id =
         Prop.computed __type __id "stream_analytics_job_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_cosmosdb
        (azurerm_stream_analytics_output_cosmosdb ?document_id ?id
           ?partition_key ?timeouts ~container_name
           ~cosmosdb_account_key ~cosmosdb_sql_database_id ~name
           ~stream_analytics_job_id ());
    attrs = __attrs;
  }

let register ?tf_module ?document_id ?id ?partition_key ?timeouts
    ~container_name ~cosmosdb_account_key ~cosmosdb_sql_database_id
    ~name ~stream_analytics_job_id __id =
  let (r : _ Tf_core.resource) =
    make ?document_id ?id ?partition_key ?timeouts ~container_name
      ~cosmosdb_account_key ~cosmosdb_sql_database_id ~name
      ~stream_analytics_job_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
