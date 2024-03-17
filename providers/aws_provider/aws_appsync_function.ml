(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_function__runtime = {
  name : string;  (** name *)
  runtime_version : string;  (** runtime_version *)
}
[@@deriving yojson_of]
(** aws_appsync_function__runtime *)

type aws_appsync_function__sync_config__lambda_conflict_handler_config = {
  lambda_conflict_handler_arn : string option; [@option]
      (** lambda_conflict_handler_arn *)
}
[@@deriving yojson_of]
(** aws_appsync_function__sync_config__lambda_conflict_handler_config *)

type aws_appsync_function__sync_config = {
  conflict_detection : string option; [@option]
      (** conflict_detection *)
  conflict_handler : string option; [@option]
      (** conflict_handler *)
  lambda_conflict_handler_config :
    aws_appsync_function__sync_config__lambda_conflict_handler_config
    list;
}
[@@deriving yojson_of]
(** aws_appsync_function__sync_config *)

type aws_appsync_function = {
  api_id : string;  (** api_id *)
  code : string option; [@option]  (** code *)
  data_source : string;  (** data_source *)
  description : string option; [@option]  (** description *)
  max_batch_size : float option; [@option]  (** max_batch_size *)
  name : string;  (** name *)
  request_mapping_template : string option; [@option]
      (** request_mapping_template *)
  response_mapping_template : string option; [@option]
      (** response_mapping_template *)
  runtime : aws_appsync_function__runtime list;
  sync_config : aws_appsync_function__sync_config list;
}
[@@deriving yojson_of]
(** aws_appsync_function *)

let aws_appsync_function ?code ?description ?max_batch_size
    ?request_mapping_template ?response_mapping_template ~api_id
    ~data_source ~name ~runtime ~sync_config __resource_id =
  let __resource_type = "aws_appsync_function" in
  let __resource =
    {
      api_id;
      code;
      data_source;
      description;
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
