(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logging_config__cloudwatch_config__large_data_delivery_s3_config = {
  bucket_name : string prop option; [@option]
  key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       logging_config__cloudwatch_config__large_data_delivery_s3_config) ->
  ()

let yojson_of_logging_config__cloudwatch_config__large_data_delivery_s3_config
    =
  (function
   | { bucket_name = v_bucket_name; key_prefix = v_key_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_config__cloudwatch_config__large_data_delivery_s3_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_logging_config__cloudwatch_config__large_data_delivery_s3_config

[@@@deriving.end]

type logging_config__cloudwatch_config = {
  log_group_name : string prop option; [@option]
  role_arn : string prop option; [@option]
  large_data_delivery_s3_config :
    logging_config__cloudwatch_config__large_data_delivery_s3_config;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config__cloudwatch_config) -> ()

let yojson_of_logging_config__cloudwatch_config =
  (function
   | {
       log_group_name = v_log_group_name;
       role_arn = v_role_arn;
       large_data_delivery_s3_config =
         v_large_data_delivery_s3_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_logging_config__cloudwatch_config__large_data_delivery_s3_config
             v_large_data_delivery_s3_config
         in
         ("large_data_delivery_s3_config", arg) :: bnds
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_config__cloudwatch_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config__cloudwatch_config

[@@@deriving.end]

type logging_config__s3_config = {
  bucket_name : string prop option; [@option]
  key_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config__s3_config) -> ()

let yojson_of_logging_config__s3_config =
  (function
   | { bucket_name = v_bucket_name; key_prefix = v_key_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_config__s3_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config__s3_config

[@@@deriving.end]

type logging_config = {
  embedding_data_delivery_enabled : bool prop;
  image_data_delivery_enabled : bool prop;
  text_data_delivery_enabled : bool prop;
  cloudwatch_config : logging_config__cloudwatch_config;
  s3_config : logging_config__s3_config;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_config) -> ()

let yojson_of_logging_config =
  (function
   | {
       embedding_data_delivery_enabled =
         v_embedding_data_delivery_enabled;
       image_data_delivery_enabled = v_image_data_delivery_enabled;
       text_data_delivery_enabled = v_text_data_delivery_enabled;
       cloudwatch_config = v_cloudwatch_config;
       s3_config = v_s3_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_logging_config__s3_config v_s3_config in
         ("s3_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_logging_config__cloudwatch_config
             v_cloudwatch_config
         in
         ("cloudwatch_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_text_data_delivery_enabled
         in
         ("text_data_delivery_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_image_data_delivery_enabled
         in
         ("image_data_delivery_enabled", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_embedding_data_delivery_enabled
         in
         ("embedding_data_delivery_enabled", arg) :: bnds
       in
       `Assoc bnds
    : logging_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_config

[@@@deriving.end]

type aws_bedrock_model_invocation_logging_configuration = {
  logging_config : logging_config;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_bedrock_model_invocation_logging_configuration) -> ()

let yojson_of_aws_bedrock_model_invocation_logging_configuration =
  (function
   | { logging_config = v_logging_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_logging_config v_logging_config in
         ("logging_config", arg) :: bnds
       in
       `Assoc bnds
    : aws_bedrock_model_invocation_logging_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrock_model_invocation_logging_configuration

[@@@deriving.end]

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

type t = { tf_name : string; id : string prop }

let make ~logging_config __id =
  let __type =
    "aws_bedrock_model_invocation_logging_configuration"
  in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
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
