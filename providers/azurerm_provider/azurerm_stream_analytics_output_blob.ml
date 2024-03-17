(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_stream_analytics_output_blob__serialization = {
  encoding : string option; [@option]  (** encoding *)
  field_delimiter : string option; [@option]  (** field_delimiter *)
  format : string option; [@option]  (** format *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_blob__serialization *)

type azurerm_stream_analytics_output_blob__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_blob__timeouts *)

type azurerm_stream_analytics_output_blob = {
  authentication_mode : string option; [@option]
      (** authentication_mode *)
  batch_max_wait_time : string option; [@option]
      (** batch_max_wait_time *)
  batch_min_rows : float option; [@option]  (** batch_min_rows *)
  blob_write_mode : string option; [@option]  (** blob_write_mode *)
  date_format : string;  (** date_format *)
  name : string;  (** name *)
  path_pattern : string;  (** path_pattern *)
  resource_group_name : string;  (** resource_group_name *)
  storage_account_key : string option; [@option]
      (** storage_account_key *)
  storage_account_name : string;  (** storage_account_name *)
  storage_container_name : string;  (** storage_container_name *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  time_format : string;  (** time_format *)
  serialization :
    azurerm_stream_analytics_output_blob__serialization list;
  timeouts : azurerm_stream_analytics_output_blob__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_blob *)

let azurerm_stream_analytics_output_blob ?authentication_mode
    ?batch_max_wait_time ?batch_min_rows ?blob_write_mode
    ?storage_account_key ?timeouts ~date_format ~name ~path_pattern
    ~resource_group_name ~storage_account_name
    ~storage_container_name ~stream_analytics_job_name ~time_format
    ~serialization __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_blob" in
  let __resource =
    {
      authentication_mode;
      batch_max_wait_time;
      batch_min_rows;
      blob_write_mode;
      date_format;
      name;
      path_pattern;
      resource_group_name;
      storage_account_key;
      storage_account_name;
      storage_container_name;
      stream_analytics_job_name;
      time_format;
      serialization;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_blob __resource);
  ()
