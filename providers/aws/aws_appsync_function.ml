(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type runtime = {
  name : string prop;  (** name *)
  runtime_version : string prop;  (** runtime_version *)
}
[@@deriving yojson_of]
(** runtime *)

type sync_config__lambda_conflict_handler_config = {
  lambda_conflict_handler_arn : string prop option; [@option]
      (** lambda_conflict_handler_arn *)
}
[@@deriving yojson_of]
(** sync_config__lambda_conflict_handler_config *)

type sync_config = {
  conflict_detection : string prop option; [@option]
      (** conflict_detection *)
  conflict_handler : string prop option; [@option]
      (** conflict_handler *)
  lambda_conflict_handler_config :
    sync_config__lambda_conflict_handler_config list;
}
[@@deriving yojson_of]
(** sync_config *)

type aws_appsync_function = {
  api_id : string prop;  (** api_id *)
  code : string prop option; [@option]  (** code *)
  data_source : string prop;  (** data_source *)
  description : string prop option; [@option]  (** description *)
  function_version : string prop option; [@option]
      (** function_version *)
  id : string prop option; [@option]  (** id *)
  max_batch_size : float prop option; [@option]
      (** max_batch_size *)
  name : string prop;  (** name *)
  request_mapping_template : string prop option; [@option]
      (** request_mapping_template *)
  response_mapping_template : string prop option; [@option]
      (** response_mapping_template *)
  runtime : runtime list;
  sync_config : sync_config list;
}
[@@deriving yojson_of]
(** aws_appsync_function *)

let runtime ~name ~runtime_version () : runtime =
  { name; runtime_version }

let sync_config__lambda_conflict_handler_config
    ?lambda_conflict_handler_arn () :
    sync_config__lambda_conflict_handler_config =
  { lambda_conflict_handler_arn }

let sync_config ?conflict_detection ?conflict_handler
    ~lambda_conflict_handler_config () : sync_config =
  {
    conflict_detection;
    conflict_handler;
    lambda_conflict_handler_config;
  }

let aws_appsync_function ?code ?description ?function_version ?id
    ?max_batch_size ?request_mapping_template
    ?response_mapping_template ~api_id ~data_source ~name ~runtime
    ~sync_config () : aws_appsync_function =
  {
    api_id;
    code;
    data_source;
    description;
    function_version;
    id;
    max_batch_size;
    name;
    request_mapping_template;
    response_mapping_template;
    runtime;
    sync_config;
  }

type t = {
  api_id : string prop;
  arn : string prop;
  code : string prop;
  data_source : string prop;
  description : string prop;
  function_id : string prop;
  function_version : string prop;
  id : string prop;
  max_batch_size : float prop;
  name : string prop;
  request_mapping_template : string prop;
  response_mapping_template : string prop;
}

let register ?tf_module ?code ?description ?function_version ?id
    ?max_batch_size ?request_mapping_template
    ?response_mapping_template ~api_id ~data_source ~name ~runtime
    ~sync_config __resource_id =
  let __resource_type = "aws_appsync_function" in
  let __resource =
    aws_appsync_function ?code ?description ?function_version ?id
      ?max_batch_size ?request_mapping_template
      ?response_mapping_template ~api_id ~data_source ~name ~runtime
      ~sync_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_function __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       code = Prop.computed __resource_type __resource_id "code";
       data_source =
         Prop.computed __resource_type __resource_id "data_source";
       description =
         Prop.computed __resource_type __resource_id "description";
       function_id =
         Prop.computed __resource_type __resource_id "function_id";
       function_version =
         Prop.computed __resource_type __resource_id
           "function_version";
       id = Prop.computed __resource_type __resource_id "id";
       max_batch_size =
         Prop.computed __resource_type __resource_id "max_batch_size";
       name = Prop.computed __resource_type __resource_id "name";
       request_mapping_template =
         Prop.computed __resource_type __resource_id
           "request_mapping_template";
       response_mapping_template =
         Prop.computed __resource_type __resource_id
           "response_mapping_template";
     }
      : t)
  in
  __resource_attributes
