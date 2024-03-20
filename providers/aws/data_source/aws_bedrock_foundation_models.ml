(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type model_summaries = {
  customizations_supported : string prop list;
  inference_types_supported : string prop list;
  input_modalities : string prop list;
  model_arn : string prop;
  model_id : string prop;
  model_name : string prop;
  output_modalities : string prop list;
  provider_name : string prop;
  response_streaming_supported : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : model_summaries) -> ()

let yojson_of_model_summaries =
  (function
   | {
       customizations_supported = v_customizations_supported;
       inference_types_supported = v_inference_types_supported;
       input_modalities = v_input_modalities;
       model_arn = v_model_arn;
       model_id = v_model_id;
       model_name = v_model_name;
       output_modalities = v_output_modalities;
       provider_name = v_provider_name;
       response_streaming_supported = v_response_streaming_supported;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_response_streaming_supported
         in
         ("response_streaming_supported", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_provider_name in
         ("provider_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_output_modalities
         in
         ("output_modalities", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_name in
         ("model_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_id in
         ("model_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_model_arn in
         ("model_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_input_modalities
         in
         ("input_modalities", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_inference_types_supported
         in
         ("inference_types_supported", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_customizations_supported
         in
         ("customizations_supported", arg) :: bnds
       in
       `Assoc bnds
    : model_summaries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_model_summaries

[@@@deriving.end]

type aws_bedrock_foundation_models = {
  by_customization_type : string prop option; [@option]
  by_inference_type : string prop option; [@option]
  by_output_modality : string prop option; [@option]
  by_provider : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_bedrock_foundation_models) -> ()

let yojson_of_aws_bedrock_foundation_models =
  (function
   | {
       by_customization_type = v_by_customization_type;
       by_inference_type = v_by_inference_type;
       by_output_modality = v_by_output_modality;
       by_provider = v_by_provider;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_by_provider with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "by_provider", arg in
             bnd :: bnds
       in
       let bnds =
         match v_by_output_modality with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "by_output_modality", arg in
             bnd :: bnds
       in
       let bnds =
         match v_by_inference_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "by_inference_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_by_customization_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "by_customization_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_bedrock_foundation_models ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_bedrock_foundation_models

[@@@deriving.end]

let aws_bedrock_foundation_models ?by_customization_type
    ?by_inference_type ?by_output_modality ?by_provider () :
    aws_bedrock_foundation_models =
  {
    by_customization_type;
    by_inference_type;
    by_output_modality;
    by_provider;
  }

type t = {
  by_customization_type : string prop;
  by_inference_type : string prop;
  by_output_modality : string prop;
  by_provider : string prop;
  id : string prop;
  model_summaries : model_summaries list prop;
}

let make ?by_customization_type ?by_inference_type
    ?by_output_modality ?by_provider __id =
  let __type = "aws_bedrock_foundation_models" in
  let __attrs =
    ({
       by_customization_type =
         Prop.computed __type __id "by_customization_type";
       by_inference_type =
         Prop.computed __type __id "by_inference_type";
       by_output_modality =
         Prop.computed __type __id "by_output_modality";
       by_provider = Prop.computed __type __id "by_provider";
       id = Prop.computed __type __id "id";
       model_summaries = Prop.computed __type __id "model_summaries";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_bedrock_foundation_models
        (aws_bedrock_foundation_models ?by_customization_type
           ?by_inference_type ?by_output_modality ?by_provider ());
    attrs = __attrs;
  }

let register ?tf_module ?by_customization_type ?by_inference_type
    ?by_output_modality ?by_provider __id =
  let (r : _ Tf_core.resource) =
    make ?by_customization_type ?by_inference_type
      ?by_output_modality ?by_provider __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
