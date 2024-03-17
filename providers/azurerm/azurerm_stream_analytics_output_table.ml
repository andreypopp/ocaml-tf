(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_table__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_table__timeouts *)

type azurerm_stream_analytics_output_table = {
  batch_size : float prop;  (** batch_size *)
  columns_to_remove : string prop list option; [@option]
      (** columns_to_remove *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_key : string prop;  (** partition_key *)
  resource_group_name : string prop;  (** resource_group_name *)
  row_key : string prop;  (** row_key *)
  storage_account_key : string prop;  (** storage_account_key *)
  storage_account_name : string prop;  (** storage_account_name *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  table : string prop;  (** table *)
  timeouts : azurerm_stream_analytics_output_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_table *)

type t = {
  batch_size : float prop;
  columns_to_remove : string list prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  resource_group_name : string prop;
  row_key : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
}

let azurerm_stream_analytics_output_table ?columns_to_remove ?id
    ?timeouts ~batch_size ~name ~partition_key ~resource_group_name
    ~row_key ~storage_account_key ~storage_account_name
    ~stream_analytics_job_name ~table __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_table" in
  let __resource =
    ({
       batch_size;
       columns_to_remove;
       id;
       name;
       partition_key;
       resource_group_name;
       row_key;
       storage_account_key;
       storage_account_name;
       stream_analytics_job_name;
       table;
       timeouts;
     }
      : azurerm_stream_analytics_output_table)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_table __resource);
  let __resource_attributes =
    ({
       batch_size =
         Prop.computed __resource_type __resource_id "batch_size";
       columns_to_remove =
         Prop.computed __resource_type __resource_id
           "columns_to_remove";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       partition_key =
         Prop.computed __resource_type __resource_id "partition_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       row_key =
         Prop.computed __resource_type __resource_id "row_key";
       storage_account_key =
         Prop.computed __resource_type __resource_id
           "storage_account_key";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
       stream_analytics_job_name =
         Prop.computed __resource_type __resource_id
           "stream_analytics_job_name";
       table = Prop.computed __resource_type __resource_id "table";
     }
      : t)
  in
  __resource_attributes
