(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_function_javascript_udf__input = {
  configuration_parameter : bool prop option; [@option]
      (** configuration_parameter *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_udf__input *)

type azurerm_stream_analytics_function_javascript_udf__output = {
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_udf__output *)

type azurerm_stream_analytics_function_javascript_udf__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_udf__timeouts *)

type azurerm_stream_analytics_function_javascript_udf = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  script : string prop;  (** script *)
  stream_analytics_job_name : string prop;
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

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  script : string prop;
  stream_analytics_job_name : string prop;
}

let azurerm_stream_analytics_function_javascript_udf ?id ?timeouts
    ~name ~resource_group_name ~script ~stream_analytics_job_name
    ~input ~output __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_function_javascript_udf"
  in
  let __resource =
    ({
       id;
       name;
       resource_group_name;
       script;
       stream_analytics_job_name;
       input;
       output;
       timeouts;
     }
      : azurerm_stream_analytics_function_javascript_udf)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_function_javascript_udf
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       script = Prop.computed __resource_type __resource_id "script";
       stream_analytics_job_name =
         Prop.computed __resource_type __resource_id
           "stream_analytics_job_name";
     }
      : t)
  in
  __resource_attributes
