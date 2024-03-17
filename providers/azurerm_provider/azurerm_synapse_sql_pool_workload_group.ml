(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_synapse_sql_pool_workload_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_workload_group__timeouts *)

type azurerm_synapse_sql_pool_workload_group = {
  importance : string option; [@option]  (** importance *)
  max_resource_percent : float;  (** max_resource_percent *)
  max_resource_percent_per_request : float option; [@option]
      (** max_resource_percent_per_request *)
  min_resource_percent : float;  (** min_resource_percent *)
  min_resource_percent_per_request : float option; [@option]
      (** min_resource_percent_per_request *)
  name : string;  (** name *)
  query_execution_timeout_in_seconds : float option; [@option]
      (** query_execution_timeout_in_seconds *)
  sql_pool_id : string;  (** sql_pool_id *)
  timeouts : azurerm_synapse_sql_pool_workload_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_workload_group *)

let azurerm_synapse_sql_pool_workload_group ?importance
    ?max_resource_percent_per_request
    ?min_resource_percent_per_request
    ?query_execution_timeout_in_seconds ?timeouts
    ~max_resource_percent ~min_resource_percent ~name ~sql_pool_id
    __resource_id =
  let __resource_type = "azurerm_synapse_sql_pool_workload_group" in
  let __resource =
    {
      importance;
      max_resource_percent;
      max_resource_percent_per_request;
      min_resource_percent;
      min_resource_percent_per_request;
      name;
      query_execution_timeout_in_seconds;
      sql_pool_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_sql_pool_workload_group __resource);
  ()
