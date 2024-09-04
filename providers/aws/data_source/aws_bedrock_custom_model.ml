(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type output_data_config = { s3_uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : output_data_config) -> ()

let yojson_of_output_data_config =
  (function
   | { s3_uri = v_s3_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : output_data_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_data_config

[@@@deriving.end]

type training_data_config = { s3_uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : training_data_config) -> ()

let yojson_of_training_data_config =
  (function
   | { s3_uri = v_s3_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : training_data_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_training_data_config

[@@@deriving.end]

type training_metrics = { training_loss : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : training_metrics) -> ()

let yojson_of_training_metrics =
  (function
   | { training_loss = v_training_loss } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_training_loss in
         ("training_loss", arg) :: bnds
       in
       `Assoc bnds
    : training_metrics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_training_metrics

[@@@deriving.end]

type validation_data_config__validator = { s3_uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_data_config__validator) -> ()

let yojson_of_validation_data_config__validator =
  (function
   | { s3_uri = v_s3_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       `Assoc bnds
    : validation_data_config__validator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_data_config__validator

[@@@deriving.end]

type validation_data_config = {
  validator : validation_data_config__validator list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_data_config) -> ()

let yojson_of_validation_data_config =
  (function
   | { validator = v_validator } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_validator then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_validation_data_config__validator)
               v_validator
           in
           let bnd = "validator", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : validation_data_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_data_config

[@@@deriving.end]

type validation_metrics = { validation_loss : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_metrics) -> ()

let yojson_of_validation_metrics =
  (function
   | { validation_loss = v_validation_loss } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_validation_loss
         in
         ("validation_loss", arg) :: bnds
       in
       `Assoc bnds
    : validation_metrics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_metrics

[@@@deriving.end]

type aws_bedrock_custom_model = { model_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrock_custom_model) -> ()

let yojson_of_aws_bedrock_custom_model =
  (function
   | { model_id = v_model_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_id in
         ("model_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_bedrock_custom_model -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrock_custom_model

[@@@deriving.end]

let aws_bedrock_custom_model ~model_id () : aws_bedrock_custom_model
    =
  { model_id }

type t = {
  tf_name : string;
  base_model_arn : string prop;
  creation_time : string prop;
  hyperparameters : string Tf_core.assoc prop;
  id : string prop;
  job_arn : string prop;
  job_name : string prop;
  job_tags : string Tf_core.assoc prop;
  model_arn : string prop;
  model_id : string prop;
  model_kms_key_arn : string prop;
  model_name : string prop;
  model_tags : string Tf_core.assoc prop;
  output_data_config : output_data_config list prop;
  training_data_config : training_data_config list prop;
  training_metrics : training_metrics list prop;
  validation_data_config : validation_data_config list prop;
  validation_metrics : validation_metrics list prop;
}

let make ~model_id __id =
  let __type = "aws_bedrock_custom_model" in
  let __attrs =
    ({
       tf_name = __id;
       base_model_arn = Prop.computed __type __id "base_model_arn";
       creation_time = Prop.computed __type __id "creation_time";
       hyperparameters = Prop.computed __type __id "hyperparameters";
       id = Prop.computed __type __id "id";
       job_arn = Prop.computed __type __id "job_arn";
       job_name = Prop.computed __type __id "job_name";
       job_tags = Prop.computed __type __id "job_tags";
       model_arn = Prop.computed __type __id "model_arn";
       model_id = Prop.computed __type __id "model_id";
       model_kms_key_arn =
         Prop.computed __type __id "model_kms_key_arn";
       model_name = Prop.computed __type __id "model_name";
       model_tags = Prop.computed __type __id "model_tags";
       output_data_config =
         Prop.computed __type __id "output_data_config";
       training_data_config =
         Prop.computed __type __id "training_data_config";
       training_metrics =
         Prop.computed __type __id "training_metrics";
       validation_data_config =
         Prop.computed __type __id "validation_data_config";
       validation_metrics =
         Prop.computed __type __id "validation_metrics";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrock_custom_model
        (aws_bedrock_custom_model ~model_id ());
    attrs = __attrs;
  }

let register ?tf_module ~model_id __id =
  let (r : _ Tf_core.resource) = make ~model_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
