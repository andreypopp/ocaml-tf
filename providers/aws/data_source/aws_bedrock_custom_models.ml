(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type model_summaries = {
  creation_time : string prop;
  model_arn : string prop;
  model_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : model_summaries) -> ()

let yojson_of_model_summaries =
  (function
   | {
       creation_time = v_creation_time;
       model_arn = v_model_arn;
       model_name = v_model_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_name in
         ("model_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_arn in
         ("model_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_creation_time in
         ("creation_time", arg) :: bnds
       in
       `Assoc bnds
    : model_summaries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_model_summaries

[@@@deriving.end]

type aws_bedrock_custom_models = unit [@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrock_custom_models) -> ()

let yojson_of_aws_bedrock_custom_models =
  (yojson_of_unit
    : aws_bedrock_custom_models -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrock_custom_models

[@@@deriving.end]

let aws_bedrock_custom_models () = ()

type t = {
  tf_name : string;
  id : string prop;
  model_summaries : model_summaries list prop;
}

let make __id =
  let __type = "aws_bedrock_custom_models" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       model_summaries = Prop.computed __type __id "model_summaries";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrock_custom_models
        (aws_bedrock_custom_models ());
    attrs = __attrs;
  }

let register ?tf_module __id =
  let (r : _ Tf_core.resource) = make __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
