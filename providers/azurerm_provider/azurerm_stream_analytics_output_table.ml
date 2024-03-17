(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_stream_analytics_output_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_table__timeouts *)

type azurerm_stream_analytics_output_table = {
  batch_size : float;  (** batch_size *)
  columns_to_remove : string list option; [@option]
      (** columns_to_remove *)
  name : string;  (** name *)
  partition_key : string;  (** partition_key *)
  resource_group_name : string;  (** resource_group_name *)
  row_key : string;  (** row_key *)
  storage_account_key : string;  (** storage_account_key *)
  storage_account_name : string;  (** storage_account_name *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  table : string;  (** table *)
  timeouts : azurerm_stream_analytics_output_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_table *)

let azurerm_stream_analytics_output_table ?columns_to_remove
    ?timeouts ~batch_size ~name ~partition_key ~resource_group_name
    ~row_key ~storage_account_key ~storage_account_name
    ~stream_analytics_job_name ~table __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_table" in
  let __resource =
    {
      batch_size;
      columns_to_remove;
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_table __resource);
  ()
