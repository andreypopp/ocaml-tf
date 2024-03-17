(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_function__runtime = {
  name : string prop;  (** name *)
  runtime_version : string prop;  (** runtime_version *)
}
[@@deriving yojson_of]
(** aws_appsync_function__runtime *)

type aws_appsync_function__sync_config__lambda_conflict_handler_config = {
  lambda_conflict_handler_arn : string prop option; [@option]
      (** lambda_conflict_handler_arn *)
}
[@@deriving yojson_of]
(** aws_appsync_function__sync_config__lambda_conflict_handler_config *)

type aws_appsync_function__sync_config = {
  conflict_detection : string prop option; [@option]
      (** conflict_detection *)
  conflict_handler : string prop option; [@option]
      (** conflict_handler *)
  lambda_conflict_handler_config :
    aws_appsync_function__sync_config__lambda_conflict_handler_config
    list;
}
[@@deriving yojson_of]
(** aws_appsync_function__sync_config *)

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
  runtime : aws_appsync_function__runtime list;
  sync_config : aws_appsync_function__sync_config list;
}
[@@deriving yojson_of]
(** aws_appsync_function *)

let aws_appsync_function ?code ?description ?function_version ?id
    ?max_batch_size ?request_mapping_template
    ?response_mapping_template ~api_id ~data_source ~name ~runtime
    ~sync_config __resource_id =
  let __resource_type = "aws_appsync_function" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_function __resource);
  ()
