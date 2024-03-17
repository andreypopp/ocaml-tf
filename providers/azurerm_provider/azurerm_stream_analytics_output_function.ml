(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_function__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_function__timeouts *)

type azurerm_stream_analytics_output_function = {
  api_key : string prop;  (** api_key *)
  batch_max_count : float prop option; [@option]
      (** batch_max_count *)
  batch_max_in_bytes : float prop option; [@option]
      (** batch_max_in_bytes *)
  function_app : string prop;  (** function_app *)
  function_name : string prop;  (** function_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  timeouts :
    azurerm_stream_analytics_output_function__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_function *)

let azurerm_stream_analytics_output_function ?batch_max_count
    ?batch_max_in_bytes ?id ?timeouts ~api_key ~function_app
    ~function_name ~name ~resource_group_name
    ~stream_analytics_job_name __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_function" in
  let __resource =
    {
      api_key;
      batch_max_count;
      batch_max_in_bytes;
      function_app;
      function_name;
      id;
      name;
      resource_group_name;
      stream_analytics_job_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_function __resource);
  ()
