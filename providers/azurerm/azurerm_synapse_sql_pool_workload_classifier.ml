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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_sql_pool_workload_classifier *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_sql_pool_workload_classifier ?context ?end_time
    ?id ?importance ?label ?start_time ?timeouts ~member_name ~name
    ~workload_group_id () :
    azurerm_synapse_sql_pool_workload_classifier =
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

type t = {
  context : string prop;
  end_time : string prop;
  id : string prop;
  importance : string prop;
  label : string prop;
  member_name : string prop;
  name : string prop;
  start_time : string prop;
  workload_group_id : string prop;
}

let register ?tf_module ?context ?end_time ?id ?importance ?label
    ?start_time ?timeouts ~member_name ~name ~workload_group_id
    __resource_id =
  let __resource_type =
    "azurerm_synapse_sql_pool_workload_classifier"
  in
  let __resource =
    azurerm_synapse_sql_pool_workload_classifier ?context ?end_time
      ?id ?importance ?label ?start_time ?timeouts ~member_name ~name
      ~workload_group_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_sql_pool_workload_classifier
       __resource);
  let __resource_attributes =
    ({
       context =
         Prop.computed __resource_type __resource_id "context";
       end_time =
         Prop.computed __resource_type __resource_id "end_time";
       id = Prop.computed __resource_type __resource_id "id";
       importance =
         Prop.computed __resource_type __resource_id "importance";
       label = Prop.computed __resource_type __resource_id "label";
       member_name =
         Prop.computed __resource_type __resource_id "member_name";
       name = Prop.computed __resource_type __resource_id "name";
       start_time =
         Prop.computed __resource_type __resource_id "start_time";
       workload_group_id =
         Prop.computed __resource_type __resource_id
           "workload_group_id";
     }
      : t)
  in
  __resource_attributes
