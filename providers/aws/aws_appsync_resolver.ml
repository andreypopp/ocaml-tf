(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type caching_config = {
  caching_keys : string prop list option; [@option]
      (** caching_keys *)
  ttl : float prop option; [@option]  (** ttl *)
}
[@@deriving yojson_of]
(** caching_config *)

type pipeline_config = {
  functions : string prop list option; [@option]  (** functions *)
}
[@@deriving yojson_of]
(** pipeline_config *)

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
  caching_config : caching_config list;
  pipeline_config : pipeline_config list;
  runtime : runtime list;
  sync_config : sync_config list;
}
[@@deriving yojson_of]
(** aws_appsync_resolver *)

let caching_config ?caching_keys ?ttl () : caching_config =
  { caching_keys; ttl }

let pipeline_config ?functions () : pipeline_config = { functions }

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

let aws_appsync_resolver ?code ?data_source ?id ?kind ?max_batch_size
    ?request_template ?response_template ~api_id ~field ~type_
    ~caching_config ~pipeline_config ~runtime ~sync_config () :
    aws_appsync_resolver =
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

type t = {
  api_id : string prop;
  arn : string prop;
  code : string prop;
  data_source : string prop;
  field : string prop;
  id : string prop;
  kind : string prop;
  max_batch_size : float prop;
  request_template : string prop;
  response_template : string prop;
  type_ : string prop;
}

let register ?tf_module ?code ?data_source ?id ?kind ?max_batch_size
    ?request_template ?response_template ~api_id ~field ~type_
    ~caching_config ~pipeline_config ~runtime ~sync_config
    __resource_id =
  let __resource_type = "aws_appsync_resolver" in
  let __resource =
    aws_appsync_resolver ?code ?data_source ?id ?kind ?max_batch_size
      ?request_template ?response_template ~api_id ~field ~type_
      ~caching_config ~pipeline_config ~runtime ~sync_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appsync_resolver __resource);
  let __resource_attributes =
    ({
       api_id = Prop.computed __resource_type __resource_id "api_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       code = Prop.computed __resource_type __resource_id "code";
       data_source =
         Prop.computed __resource_type __resource_id "data_source";
       field = Prop.computed __resource_type __resource_id "field";
       id = Prop.computed __resource_type __resource_id "id";
       kind = Prop.computed __resource_type __resource_id "kind";
       max_batch_size =
         Prop.computed __resource_type __resource_id "max_batch_size";
       request_template =
         Prop.computed __resource_type __resource_id
           "request_template";
       response_template =
         Prop.computed __resource_type __resource_id
           "response_template";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
