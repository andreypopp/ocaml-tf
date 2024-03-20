(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_config__on_failure = {
  destination : string prop;  (** destination *)
}
[@@deriving yojson_of]
(** destination_config__on_failure *)

type destination_config__on_success = {
  destination : string prop;  (** destination *)
}
[@@deriving yojson_of]
(** destination_config__on_success *)

type destination_config = {
  on_failure : destination_config__on_failure list;
  on_success : destination_config__on_success list;
}
[@@deriving yojson_of]
(** destination_config *)

type aws_lambda_function_event_invoke_config = {
  function_name : string prop;  (** function_name *)
  id : string prop option; [@option]  (** id *)
  maximum_event_age_in_seconds : float prop option; [@option]
      (** maximum_event_age_in_seconds *)
  maximum_retry_attempts : float prop option; [@option]
      (** maximum_retry_attempts *)
  qualifier : string prop option; [@option]  (** qualifier *)
  destination_config : destination_config list;
}
[@@deriving yojson_of]
(** aws_lambda_function_event_invoke_config *)

let destination_config__on_failure ~destination () :
    destination_config__on_failure =
  { destination }

let destination_config__on_success ~destination () :
    destination_config__on_success =
  { destination }

let destination_config ~on_failure ~on_success () :
    destination_config =
  { on_failure; on_success }

let aws_lambda_function_event_invoke_config ?id
    ?maximum_event_age_in_seconds ?maximum_retry_attempts ?qualifier
    ~function_name ~destination_config () :
    aws_lambda_function_event_invoke_config =
  {
    function_name;
    id;
    maximum_event_age_in_seconds;
    maximum_retry_attempts;
    qualifier;
    destination_config;
  }

type t = {
  function_name : string prop;
  id : string prop;
  maximum_event_age_in_seconds : float prop;
  maximum_retry_attempts : float prop;
  qualifier : string prop;
}

let make ?id ?maximum_event_age_in_seconds ?maximum_retry_attempts
    ?qualifier ~function_name ~destination_config __id =
  let __type = "aws_lambda_function_event_invoke_config" in
  let __attrs =
    ({
       function_name = Prop.computed __type __id "function_name";
       id = Prop.computed __type __id "id";
       maximum_event_age_in_seconds =
         Prop.computed __type __id "maximum_event_age_in_seconds";
       maximum_retry_attempts =
         Prop.computed __type __id "maximum_retry_attempts";
       qualifier = Prop.computed __type __id "qualifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_function_event_invoke_config
        (aws_lambda_function_event_invoke_config ?id
           ?maximum_event_age_in_seconds ?maximum_retry_attempts
           ?qualifier ~function_name ~destination_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?maximum_event_age_in_seconds
    ?maximum_retry_attempts ?qualifier ~function_name
    ~destination_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?maximum_event_age_in_seconds ?maximum_retry_attempts
      ?qualifier ~function_name ~destination_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
