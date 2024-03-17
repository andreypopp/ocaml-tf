(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_stream_analytics_function_javascript_uda__input = {
  configuration_parameter : bool option; [@option]
      (** configuration_parameter *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_uda__input *)

type azurerm_stream_analytics_function_javascript_uda__output = {
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_uda__output *)

type azurerm_stream_analytics_function_javascript_uda__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_uda__timeouts *)

type azurerm_stream_analytics_function_javascript_uda = {
  name : string;  (** name *)
  script : string;  (** script *)
  stream_analytics_job_id : string;  (** stream_analytics_job_id *)
  input :
    azurerm_stream_analytics_function_javascript_uda__input list;
  output :
    azurerm_stream_analytics_function_javascript_uda__output list;
  timeouts :
    azurerm_stream_analytics_function_javascript_uda__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_uda *)

let azurerm_stream_analytics_function_javascript_uda ?timeouts ~name
    ~script ~stream_analytics_job_id ~input ~output __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_function_javascript_uda"
  in
  let __resource =
    {
      name;
      script;
      stream_analytics_job_id;
      input;
      output;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_function_javascript_uda
       __resource);
  ()
