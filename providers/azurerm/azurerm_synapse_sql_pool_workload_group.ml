(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_synapse_sql_pool_workload_group = {
  id : string prop option; [@option]  (** id *)
  importance : string prop option; [@option]  (** importance *)
  max_resource_percent : float prop;  (** max_resource_percent *)
  max_resource_percent_per_request : float prop option; [@option]
      (** max_resource_percent_per_request *)
  min_resource_percent : float prop;  (** min_resource_percent *)
  min_resource_percent_per_request : float prop option; [@option]
      (** min_resource_percent_per_request *)
  name : string prop;  (** name *)
  query_execution_timeout_in_seconds : float prop option; [@option]
      (** query_execution_timeout_in_seconds *)
  sql_pool_id : string prop;  (** sql_pool_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_workload_group *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_sql_pool_workload_group ?id ?importance
    ?max_resource_percent_per_request
    ?min_resource_percent_per_request
    ?query_execution_timeout_in_seconds ?timeouts
    ~max_resource_percent ~min_resource_percent ~name ~sql_pool_id ()
    : azurerm_synapse_sql_pool_workload_group =
  {
    id;
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

type t = {
  id : string prop;
  importance : string prop;
  max_resource_percent : float prop;
  max_resource_percent_per_request : float prop;
  min_resource_percent : float prop;
  min_resource_percent_per_request : float prop;
  name : string prop;
  query_execution_timeout_in_seconds : float prop;
  sql_pool_id : string prop;
}

let register ?tf_module ?id ?importance
    ?max_resource_percent_per_request
    ?min_resource_percent_per_request
    ?query_execution_timeout_in_seconds ?timeouts
    ~max_resource_percent ~min_resource_percent ~name ~sql_pool_id
    __resource_id =
  let __resource_type = "azurerm_synapse_sql_pool_workload_group" in
  let __resource =
    azurerm_synapse_sql_pool_workload_group ?id ?importance
      ?max_resource_percent_per_request
      ?min_resource_percent_per_request
      ?query_execution_timeout_in_seconds ?timeouts
      ~max_resource_percent ~min_resource_percent ~name ~sql_pool_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_sql_pool_workload_group __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       importance =
         Prop.computed __resource_type __resource_id "importance";
       max_resource_percent =
         Prop.computed __resource_type __resource_id
           "max_resource_percent";
       max_resource_percent_per_request =
         Prop.computed __resource_type __resource_id
           "max_resource_percent_per_request";
       min_resource_percent =
         Prop.computed __resource_type __resource_id
           "min_resource_percent";
       min_resource_percent_per_request =
         Prop.computed __resource_type __resource_id
           "min_resource_percent_per_request";
       name = Prop.computed __resource_type __resource_id "name";
       query_execution_timeout_in_seconds =
         Prop.computed __resource_type __resource_id
           "query_execution_timeout_in_seconds";
       sql_pool_id =
         Prop.computed __resource_type __resource_id "sql_pool_id";
     }
      : t)
  in
  __resource_attributes
