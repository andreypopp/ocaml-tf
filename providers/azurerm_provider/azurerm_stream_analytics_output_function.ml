(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_stream_analytics_output_function__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_function__timeouts *)

type azurerm_stream_analytics_output_function = {
  api_key : string;  (** api_key *)
  batch_max_count : float option; [@option]  (** batch_max_count *)
  batch_max_in_bytes : float option; [@option]
      (** batch_max_in_bytes *)
  function_app : string;  (** function_app *)
  function_name : string;  (** function_name *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  timeouts :
    azurerm_stream_analytics_output_function__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_function *)

let azurerm_stream_analytics_output_function ?batch_max_count
    ?batch_max_in_bytes ?timeouts ~api_key ~function_app
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
      name;
      resource_group_name;
      stream_analytics_job_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_function __resource);
  ()
