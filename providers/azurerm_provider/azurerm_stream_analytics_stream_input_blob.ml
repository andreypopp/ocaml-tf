(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_stream_analytics_stream_input_blob__serialization = {
  encoding : string option; [@option]  (** encoding *)
  field_delimiter : string option; [@option]  (** field_delimiter *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_blob__serialization *)

type azurerm_stream_analytics_stream_input_blob__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_blob__timeouts *)

type azurerm_stream_analytics_stream_input_blob = {
  date_format : string;  (** date_format *)
  name : string;  (** name *)
  path_pattern : string;  (** path_pattern *)
  resource_group_name : string;  (** resource_group_name *)
  storage_account_key : string;  (** storage_account_key *)
  storage_account_name : string;  (** storage_account_name *)
  storage_container_name : string;  (** storage_container_name *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  time_format : string;  (** time_format *)
  serialization :
    azurerm_stream_analytics_stream_input_blob__serialization list;
  timeouts :
    azurerm_stream_analytics_stream_input_blob__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_blob *)

let azurerm_stream_analytics_stream_input_blob ?timeouts ~date_format
    ~name ~path_pattern ~resource_group_name ~storage_account_key
    ~storage_account_name ~storage_container_name
    ~stream_analytics_job_name ~time_format ~serialization
    __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_stream_input_blob"
  in
  let __resource =
    {
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
    (yojson_of_azurerm_stream_analytics_stream_input_blob __resource);
  ()
