(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_cosmosdb__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_cosmosdb__timeouts *)

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
  timeouts :
    azurerm_stream_analytics_output_cosmosdb__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_cosmosdb *)

let azurerm_stream_analytics_output_cosmosdb ?document_id ?id
    ?partition_key ?timeouts ~container_name ~cosmosdb_account_key
    ~cosmosdb_sql_database_id ~name ~stream_analytics_job_id
    __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_cosmosdb" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_cosmosdb __resource);
  ()
