(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_function_event_invoke_config__destination_config__on_failure = {
  destination : string prop;  (** destination *)
}
[@@deriving yojson_of]
(** aws_lambda_function_event_invoke_config__destination_config__on_failure *)

type aws_lambda_function_event_invoke_config__destination_config__on_success = {
  destination : string prop;  (** destination *)
}
[@@deriving yojson_of]
(** aws_lambda_function_event_invoke_config__destination_config__on_success *)

type aws_lambda_function_event_invoke_config__destination_config = {
  on_failure :
    aws_lambda_function_event_invoke_config__destination_config__on_failure
    list;
  on_success :
    aws_lambda_function_event_invoke_config__destination_config__on_success
    list;
}
[@@deriving yojson_of]
(** aws_lambda_function_event_invoke_config__destination_config *)

type aws_lambda_function_event_invoke_config = {
  function_name : string prop;  (** function_name *)
  id : string prop option; [@option]  (** id *)
  maximum_event_age_in_seconds : float prop option; [@option]
      (** maximum_event_age_in_seconds *)
  maximum_retry_attempts : float prop option; [@option]
      (** maximum_retry_attempts *)
  qualifier : string prop option; [@option]  (** qualifier *)
  destination_config :
    aws_lambda_function_event_invoke_config__destination_config list;
}
[@@deriving yojson_of]
(** aws_lambda_function_event_invoke_config *)

type t = {
  function_name : string prop;
  id : string prop;
  maximum_event_age_in_seconds : float prop;
  maximum_retry_attempts : float prop;
  qualifier : string prop;
}

let aws_lambda_function_event_invoke_config ?id
    ?maximum_event_age_in_seconds ?maximum_retry_attempts ?qualifier
    ~function_name ~destination_config __resource_id =
  let __resource_type = "aws_lambda_function_event_invoke_config" in
  let __resource =
    ({
       function_name;
       id;
       maximum_event_age_in_seconds;
       maximum_retry_attempts;
       qualifier;
       destination_config;
     }
      : aws_lambda_function_event_invoke_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_function_event_invoke_config __resource);
  let __resource_attributes =
    ({
       function_name =
         Prop.computed __resource_type __resource_id "function_name";
       id = Prop.computed __resource_type __resource_id "id";
       maximum_event_age_in_seconds =
         Prop.computed __resource_type __resource_id
           "maximum_event_age_in_seconds";
       maximum_retry_attempts =
         Prop.computed __resource_type __resource_id
           "maximum_retry_attempts";
       qualifier =
         Prop.computed __resource_type __resource_id "qualifier";
     }
      : t)
  in
  __resource_attributes
