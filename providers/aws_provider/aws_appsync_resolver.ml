(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appsync_resolver__caching_config = {
  caching_keys : string prop list option; [@option]
      (** caching_keys *)
  ttl : float prop option; [@option]  (** ttl *)
}
[@@deriving yojson_of]
(** aws_appsync_resolver__caching_config *)

type aws_appsync_resolver__pipeline_config = {
  functions : string prop list option; [@option]  (** functions *)
}
[@@deriving yojson_of]
(** aws_appsync_resolver__pipeline_config *)

type aws_appsync_resolver__runtime = {
  name : string prop;  (** name *)
  runtime_version : string prop;  (** runtime_version *)
}
[@@deriving yojson_of]
(** aws_appsync_resolver__runtime *)

type aws_appsync_resolver__sync_config__lambda_conflict_handler_config = {
  lambda_conflict_handler_arn : string prop option; [@option]
      (** lambda_conflict_handler_arn *)
}
[@@deriving yojson_of]
(** aws_appsync_resolver__sync_config__lambda_conflict_handler_config *)

type aws_appsync_resolver__sync_config = {
  conflict_detection : string prop option; [@option]
      (** conflict_detection *)
  conflict_handler : string prop option; [@option]
      (** conflict_handler *)
  lambda_conflict_handler_config :
    aws_appsync_resolver__sync_config__lambda_conflict_handler_config
    list;
}
[@@deriving yojson_of]
(** aws_appsync_resolver__sync_config *)

type aws_appsync_resolver = {
  api_id : string prop;  (** api_id *)
  code : string prop option; [@option]  (** code *)
  data_source : string prop option; [@option]  (** data_source *)
  field : string prop;  (** field *)
  id : string prop option; [@option]  (** id *)
  kind : string prop option; [@option]  (** kind *)
  max_batch_size : float prop option; [@option]
      (** max_batch_size *)
  request_template : string prop option; [@option]
      (** request_template *)
  response_template : string prop option; [@option]
      (** response_template *)
  type_ : string prop; [@key "type"]  (** type *)
  caching_config : aws_appsync_resolver__caching_config list;
  pipeline_config : aws_appsync_resolver__pipeline_config list;
  runtime : aws_appsync_resolver__runtime list;
  sync_config : aws_appsync_resolver__sync_config list;
}
[@@deriving yojson_of]
(** aws_appsync_resolver *)

let aws_appsync_resolver ?code ?data_source ?id ?kind ?max_batch_size
    ?request_template ?response_template ~api_id ~field ~type_
    ~caching_config ~pipeline_config ~runtime ~sync_config
    __resource_id =
  let __resource_type = "aws_appsync_resolver" in
  let __resource =
    {
      api_id;
      code;
      data_source;
      field;
      id;
      kind;
      max_batch_size;
      request_template;
      response_template;
      type_;
      caching_config;
      pipeline_config;
      runtime;
      sync_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_resolver __resource);
  ()
