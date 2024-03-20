(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_config__cloudwatch_config__large_data_delivery_s3_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  key_prefix : string prop option; [@option]  (** key_prefix *)
}
[@@deriving yojson_of]
(** logging_config__cloudwatch_config__large_data_delivery_s3_config *)

type logging_config__cloudwatch_config = {
  log_group_name : string prop option; [@option]
      (** log_group_name *)
  role_arn : string prop option; [@option]  (** role_arn *)
  large_data_delivery_s3_config :
    logging_config__cloudwatch_config__large_data_delivery_s3_config;
}
[@@deriving yojson_of]
(** logging_config__cloudwatch_config *)

type logging_config__s3_config = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  key_prefix : string prop option; [@option]  (** key_prefix *)
}
[@@deriving yojson_of]
(** logging_config__s3_config *)

type logging_config = {
  embedding_data_delivery_enabled : bool prop;
      (** embedding_data_delivery_enabled *)
  image_data_delivery_enabled : bool prop;
      (** image_data_delivery_enabled *)
  text_data_delivery_enabled : bool prop;
      (** text_data_delivery_enabled *)
  cloudwatch_config : logging_config__cloudwatch_config;
  s3_config : logging_config__s3_config;
}
[@@deriving yojson_of]
(** logging_config *)

type aws_bedrock_model_invocation_logging_configuration = {
  logging_config : logging_config;
}
[@@deriving yojson_of]
(** aws_bedrock_model_invocation_logging_configuration *)

let logging_config__cloudwatch_config__large_data_delivery_s3_config
    ?bucket_name ?key_prefix () :
    logging_config__cloudwatch_config__large_data_delivery_s3_config
    =
  { bucket_name; key_prefix }

let logging_config__cloudwatch_config ?log_group_name ?role_arn
    ~large_data_delivery_s3_config () :
    logging_config__cloudwatch_config =
  { log_group_name; role_arn; large_data_delivery_s3_config }

let logging_config__s3_config ?bucket_name ?key_prefix () :
    logging_config__s3_config =
  { bucket_name; key_prefix }

let logging_config ~embedding_data_delivery_enabled
    ~image_data_delivery_enabled ~text_data_delivery_enabled
    ~cloudwatch_config ~s3_config () : logging_config =
  {
    embedding_data_delivery_enabled;
    image_data_delivery_enabled;
    text_data_delivery_enabled;
    cloudwatch_config;
    s3_config;
  }

let aws_bedrock_model_invocation_logging_configuration
    ~logging_config () :
    aws_bedrock_model_invocation_logging_configuration =
  { logging_config }

type t = { id : string prop }

let make ~logging_config __id =
  let __type =
    "aws_bedrock_model_invocation_logging_configuration"
  in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrock_model_invocation_logging_configuration
        (aws_bedrock_model_invocation_logging_configuration
           ~logging_config ());
    attrs = __attrs;
  }

let register ?tf_module ~logging_config __id =
  let (r : _ Tf_core.resource) = make ~logging_config __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
