(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_function_event_invoke_config__destination_config__on_failure = {
  destination : string;  (** destination *)
}
[@@deriving yojson_of]
(** aws_lambda_function_event_invoke_config__destination_config__on_failure *)

type aws_lambda_function_event_invoke_config__destination_config__on_success = {
  destination : string;  (** destination *)
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
  function_name : string;  (** function_name *)
  id : string option; [@option]  (** id *)
  maximum_event_age_in_seconds : float option; [@option]
      (** maximum_event_age_in_seconds *)
  maximum_retry_attempts : float option; [@option]
      (** maximum_retry_attempts *)
  qualifier : string option; [@option]  (** qualifier *)
  destination_config :
    aws_lambda_function_event_invoke_config__destination_config list;
}
[@@deriving yojson_of]
(** aws_lambda_function_event_invoke_config *)

let aws_lambda_function_event_invoke_config ?id
    ?maximum_event_age_in_seconds ?maximum_retry_attempts ?qualifier
    ~function_name ~destination_config __resource_id =
  let __resource_type = "aws_lambda_function_event_invoke_config" in
  let __resource =
    {
      function_name;
      id;
      maximum_event_age_in_seconds;
      maximum_retry_attempts;
      qualifier;
      destination_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_function_event_invoke_config __resource);
  ()
