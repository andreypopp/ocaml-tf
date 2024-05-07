(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_bedrock_foundation_model = { model_id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrock_foundation_model) -> ()

let yojson_of_aws_bedrock_foundation_model =
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
    : aws_bedrock_foundation_model ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrock_foundation_model

[@@@deriving.end]

let aws_bedrock_foundation_model ~model_id () :
    aws_bedrock_foundation_model =
  { model_id }

type t = {
  tf_name : string;
  customizations_supported : string list prop;
  id : string prop;
  inference_types_supported : string list prop;
  input_modalities : string list prop;
  model_arn : string prop;
  model_id : string prop;
  model_name : string prop;
  output_modalities : string list prop;
  provider_name : string prop;
  response_streaming_supported : bool prop;
}

let make ~model_id __id =
  let __type = "aws_bedrock_foundation_model" in
  let __attrs =
    ({
       tf_name = __id;
       customizations_supported =
         Prop.computed __type __id "customizations_supported";
       id = Prop.computed __type __id "id";
       inference_types_supported =
         Prop.computed __type __id "inference_types_supported";
       input_modalities =
         Prop.computed __type __id "input_modalities";
       model_arn = Prop.computed __type __id "model_arn";
       model_id = Prop.computed __type __id "model_id";
       model_name = Prop.computed __type __id "model_name";
       output_modalities =
         Prop.computed __type __id "output_modalities";
       provider_name = Prop.computed __type __id "provider_name";
       response_streaming_supported =
         Prop.computed __type __id "response_streaming_supported";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrock_foundation_model
        (aws_bedrock_foundation_model ~model_id ());
    attrs = __attrs;
  }

let register ?tf_module ~model_id __id =
  let (r : _ Tf_core.resource) = make ~model_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
