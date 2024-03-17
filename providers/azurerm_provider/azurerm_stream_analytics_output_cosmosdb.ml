(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_stream_analytics_output_cosmosdb__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_cosmosdb__timeouts *)

type azurerm_stream_analytics_output_cosmosdb = {
  container_name : string;  (** container_name *)
  cosmosdb_account_key : string;  (** cosmosdb_account_key *)
  cosmosdb_sql_database_id : string;  (** cosmosdb_sql_database_id *)
  document_id : string option; [@option]  (** document_id *)
  name : string;  (** name *)
  partition_key : string option; [@option]  (** partition_key *)
  stream_analytics_job_id : string;  (** stream_analytics_job_id *)
  timeouts :
    azurerm_stream_analytics_output_cosmosdb__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_cosmosdb *)

let azurerm_stream_analytics_output_cosmosdb ?document_id
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
      name;
      partition_key;
      stream_analytics_job_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_cosmosdb __resource);
  ()
