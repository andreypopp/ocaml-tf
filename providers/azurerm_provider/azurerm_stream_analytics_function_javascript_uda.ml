(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_function_javascript_uda__input = {
  configuration_parameter : bool prop option; [@option]
      (** configuration_parameter *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_uda__input *)

type azurerm_stream_analytics_function_javascript_uda__output = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_uda__output *)

type azurerm_stream_analytics_function_javascript_uda__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_uda__timeouts *)

type azurerm_stream_analytics_function_javascript_uda = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  script : string prop;  (** script *)
  stream_analytics_job_id : string prop;
      (** stream_analytics_job_id *)
  input :
    azurerm_stream_analytics_function_javascript_uda__input list;
  output :
    azurerm_stream_analytics_function_javascript_uda__output list;
  timeouts :
    azurerm_stream_analytics_function_javascript_uda__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_uda *)

let azurerm_stream_analytics_function_javascript_uda ?id ?timeouts
    ~name ~script ~stream_analytics_job_id ~input ~output
    __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_function_javascript_uda"
  in
  let __resource =
    {
      id;
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
