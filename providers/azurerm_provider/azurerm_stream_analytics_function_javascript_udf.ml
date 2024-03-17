(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_function_javascript_udf__input = {
  configuration_parameter : bool option; [@option]
      (** configuration_parameter *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_udf__input *)

type azurerm_stream_analytics_function_javascript_udf__output = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_udf__output *)

type azurerm_stream_analytics_function_javascript_udf__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_udf__timeouts *)

type azurerm_stream_analytics_function_javascript_udf = {
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  script : string;  (** script *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  input :
    azurerm_stream_analytics_function_javascript_udf__input list;
  output :
    azurerm_stream_analytics_function_javascript_udf__output list;
  timeouts :
    azurerm_stream_analytics_function_javascript_udf__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_udf *)

let azurerm_stream_analytics_function_javascript_udf ?timeouts ~name
    ~resource_group_name ~script ~stream_analytics_job_name ~input
    ~output __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_function_javascript_udf"
  in
  let __resource =
    {
      name;
      resource_group_name;
      script;
      stream_analytics_job_name;
      input;
      output;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_function_javascript_udf
       __resource);
  ()
