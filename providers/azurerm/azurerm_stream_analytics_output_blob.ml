(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type serialization = {
  encoding : string prop option; [@option]  (** encoding *)
  field_delimiter : string prop option; [@option]
      (** field_delimiter *)
  format : string prop option; [@option]  (** format *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** serialization *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_stream_analytics_output_blob = {
  authentication_mode : string prop option; [@option]
      (** authentication_mode *)
  batch_max_wait_time : string prop option; [@option]
      (** batch_max_wait_time *)
  batch_min_rows : float prop option; [@option]
      (** batch_min_rows *)
  blob_write_mode : string prop option; [@option]
      (** blob_write_mode *)
  date_format : string prop;  (** date_format *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  path_pattern : string prop;  (** path_pattern *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_key : string prop option; [@option]
      (** storage_account_key *)
  storage_account_name : string prop;  (** storage_account_name *)
  storage_container_name : string prop;
      (** storage_container_name *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  time_format : string prop;  (** time_format *)
  serialization : serialization list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_blob *)

let serialization ?encoding ?field_delimiter ?format ~type_ () :
    serialization =
  { encoding; field_delimiter; format; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_blob ?authentication_mode
    ?batch_max_wait_time ?batch_min_rows ?blob_write_mode ?id
    ?storage_account_key ?timeouts ~date_format ~name ~path_pattern
    ~resource_group_name ~storage_account_name
    ~storage_container_name ~stream_analytics_job_name ~time_format
    ~serialization () : azurerm_stream_analytics_output_blob =
  {
    authentication_mode;
    batch_max_wait_time;
    batch_min_rows;
    blob_write_mode;
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

type t = {
  authentication_mode : string prop;
  batch_max_wait_time : string prop;
  batch_min_rows : float prop;
  blob_write_mode : string prop;
  date_format : string prop;
  id : string prop;
  name : string prop;
  path_pattern : string prop;
  resource_group_name : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
  storage_container_name : string prop;
  stream_analytics_job_name : string prop;
  time_format : string prop;
}

let register ?tf_module ?authentication_mode ?batch_max_wait_time
    ?batch_min_rows ?blob_write_mode ?id ?storage_account_key
    ?timeouts ~date_format ~name ~path_pattern ~resource_group_name
    ~storage_account_name ~storage_container_name
    ~stream_analytics_job_name ~time_format ~serialization
    __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_blob" in
  let __resource =
    azurerm_stream_analytics_output_blob ?authentication_mode
      ?batch_max_wait_time ?batch_min_rows ?blob_write_mode ?id
      ?storage_account_key ?timeouts ~date_format ~name ~path_pattern
      ~resource_group_name ~storage_account_name
      ~storage_container_name ~stream_analytics_job_name ~time_format
      ~serialization ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_blob __resource);
  let __resource_attributes =
    ({
       authentication_mode =
         Prop.computed __resource_type __resource_id
           "authentication_mode";
       batch_max_wait_time =
         Prop.computed __resource_type __resource_id
           "batch_max_wait_time";
       batch_min_rows =
         Prop.computed __resource_type __resource_id "batch_min_rows";
       blob_write_mode =
         Prop.computed __resource_type __resource_id
           "blob_write_mode";
       date_format =
         Prop.computed __resource_type __resource_id "date_format";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       path_pattern =
         Prop.computed __resource_type __resource_id "path_pattern";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       storage_account_key =
         Prop.computed __resource_type __resource_id
           "storage_account_key";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
       storage_container_name =
         Prop.computed __resource_type __resource_id
           "storage_container_name";
       stream_analytics_job_name =
         Prop.computed __resource_type __resource_id
           "stream_analytics_job_name";
       time_format =
         Prop.computed __resource_type __resource_id "time_format";
     }
      : t)
  in
  __resource_attributes
