(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_synapse_sql_pool_workload_classifier__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_workload_classifier__timeouts *)

type azurerm_synapse_sql_pool_workload_classifier = {
  context : string option; [@option]  (** context *)
  end_time : string option; [@option]  (** end_time *)
  importance : string option; [@option]  (** importance *)
  label : string option; [@option]  (** label *)
  member_name : string;  (** member_name *)
  name : string;  (** name *)
  start_time : string option; [@option]  (** start_time *)
  workload_group_id : string;  (** workload_group_id *)
  timeouts :
    azurerm_synapse_sql_pool_workload_classifier__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_workload_classifier *)

let azurerm_synapse_sql_pool_workload_classifier ?context ?end_time
    ?importance ?label ?start_time ?timeouts ~member_name ~name
    ~workload_group_id __resource_id =
  let __resource_type =
    "azurerm_synapse_sql_pool_workload_classifier"
  in
  let __resource =
    {
      context;
      end_time;
      importance;
      label;
      member_name;
      name;
      start_time;
      workload_group_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_sql_pool_workload_classifier
       __resource);
  ()
