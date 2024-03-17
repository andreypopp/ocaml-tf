(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_stream_input_blob__serialization = {
  encoding : string prop option; [@option]  (** encoding *)
  field_delimiter : string prop option; [@option]
      (** field_delimiter *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_blob__serialization *)

type azurerm_stream_analytics_stream_input_blob__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_blob__timeouts *)

type azurerm_stream_analytics_stream_input_blob = {
  date_format : string prop;  (** date_format *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  path_pattern : string prop;  (** path_pattern *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_key : string prop;  (** storage_account_key *)
  storage_account_name : string prop;  (** storage_account_name *)
  storage_container_name : string prop;
      (** storage_container_name *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  time_format : string prop;  (** time_format *)
  serialization :
    azurerm_stream_analytics_stream_input_blob__serialization list;
  timeouts :
    azurerm_stream_analytics_stream_input_blob__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_stream_input_blob *)

let azurerm_stream_analytics_stream_input_blob ?id ?timeouts
    ~date_format ~name ~path_pattern ~resource_group_name
    ~storage_account_key ~storage_account_name
    ~storage_container_name ~stream_analytics_job_name ~time_format
    ~serialization __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_stream_input_blob"
  in
  let __resource =
    {
      date_format;
      id;
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
