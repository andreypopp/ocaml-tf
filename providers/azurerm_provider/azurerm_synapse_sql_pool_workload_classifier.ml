(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_synapse_sql_pool_workload_classifier__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_workload_classifier__timeouts *)

type azurerm_synapse_sql_pool_workload_classifier = {
  context : string prop option; [@option]  (** context *)
  end_time : string prop option; [@option]  (** end_time *)
  id : string prop option; [@option]  (** id *)
  importance : string prop option; [@option]  (** importance *)
  label : string prop option; [@option]  (** label *)
  member_name : string prop;  (** member_name *)
  name : string prop;  (** name *)
  start_time : string prop option; [@option]  (** start_time *)
  workload_group_id : string prop;  (** workload_group_id *)
  timeouts :
    azurerm_synapse_sql_pool_workload_classifier__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_workload_classifier *)

let azurerm_synapse_sql_pool_workload_classifier ?context ?end_time
    ?id ?importance ?label ?start_time ?timeouts ~member_name ~name
    ~workload_group_id __resource_id =
  let __resource_type =
    "azurerm_synapse_sql_pool_workload_classifier"
  in
  let __resource =
    {
      context;
      end_time;
      id;
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
