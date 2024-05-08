(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings = {
  content_redaction_output : string prop option; [@option]
  data_access_role_arn : string prop;
  output_encryption_kms_key_id : string prop option; [@option]
  output_location : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings) ->
  ()

let yojson_of_elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings
    =
  (function
   | {
       content_redaction_output = v_content_redaction_output;
       data_access_role_arn = v_data_access_role_arn;
       output_encryption_kms_key_id = v_output_encryption_kms_key_id;
       output_location = v_output_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_output_location
         in
         ("output_location", arg) :: bnds
       in
       let bnds =
         match v_output_encryption_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "output_encryption_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_access_role_arn
         in
         ("data_access_role_arn", arg) :: bnds
       in
       let bnds =
         match v_content_redaction_output with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_redaction_output", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings

[@@@deriving.end]

type elements__amazon_transcribe_call_analytics_processor_configuration = {
  call_analytics_stream_categories : string prop list option;
      [@option]
  content_identification_type : string prop option; [@option]
  content_redaction_type : string prop option; [@option]
  enable_partial_results_stabilization : bool prop option; [@option]
  filter_partial_results : bool prop option; [@option]
  language_code : string prop;
  language_model_name : string prop option; [@option]
  partial_results_stability : string prop option; [@option]
  pii_entity_types : string prop option; [@option]
  vocabulary_filter_method : string prop option; [@option]
  vocabulary_filter_name : string prop option; [@option]
  vocabulary_name : string prop option; [@option]
  post_call_analytics_settings :
    elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       elements__amazon_transcribe_call_analytics_processor_configuration) ->
  ()

let yojson_of_elements__amazon_transcribe_call_analytics_processor_configuration
    =
  (function
   | {
       call_analytics_stream_categories =
         v_call_analytics_stream_categories;
       content_identification_type = v_content_identification_type;
       content_redaction_type = v_content_redaction_type;
       enable_partial_results_stabilization =
         v_enable_partial_results_stabilization;
       filter_partial_results = v_filter_partial_results;
       language_code = v_language_code;
       language_model_name = v_language_model_name;
       partial_results_stability = v_partial_results_stability;
       pii_entity_types = v_pii_entity_types;
       vocabulary_filter_method = v_vocabulary_filter_method;
       vocabulary_filter_name = v_vocabulary_filter_name;
       vocabulary_name = v_vocabulary_name;
       post_call_analytics_settings = v_post_call_analytics_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_post_call_analytics_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings)
               v_post_call_analytics_settings
           in
           let bnd = "post_call_analytics_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vocabulary_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vocabulary_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vocabulary_filter_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vocabulary_filter_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vocabulary_filter_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vocabulary_filter_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pii_entity_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pii_entity_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partial_results_stability with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partial_results_stability", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language_model_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_model_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language_code in
         ("language_code", arg) :: bnds
       in
       let bnds =
         match v_filter_partial_results with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "filter_partial_results", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_partial_results_stabilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_partial_results_stabilization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_redaction_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_redaction_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_identification_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_identification_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_call_analytics_stream_categories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "call_analytics_stream_categories", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : elements__amazon_transcribe_call_analytics_processor_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_elements__amazon_transcribe_call_analytics_processor_configuration

[@@@deriving.end]

type elements__amazon_transcribe_processor_configuration = {
  content_identification_type : string prop option; [@option]
  content_redaction_type : string prop option; [@option]
  enable_partial_results_stabilization : bool prop option; [@option]
  filter_partial_results : bool prop option; [@option]
  language_code : string prop;
  language_model_name : string prop option; [@option]
  partial_results_stability : string prop option; [@option]
  pii_entity_types : string prop option; [@option]
  show_speaker_label : bool prop option; [@option]
  vocabulary_filter_method : string prop option; [@option]
  vocabulary_filter_name : string prop option; [@option]
  vocabulary_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : elements__amazon_transcribe_processor_configuration) -> ()

let yojson_of_elements__amazon_transcribe_processor_configuration =
  (function
   | {
       content_identification_type = v_content_identification_type;
       content_redaction_type = v_content_redaction_type;
       enable_partial_results_stabilization =
         v_enable_partial_results_stabilization;
       filter_partial_results = v_filter_partial_results;
       language_code = v_language_code;
       language_model_name = v_language_model_name;
       partial_results_stability = v_partial_results_stability;
       pii_entity_types = v_pii_entity_types;
       show_speaker_label = v_show_speaker_label;
       vocabulary_filter_method = v_vocabulary_filter_method;
       vocabulary_filter_name = v_vocabulary_filter_name;
       vocabulary_name = v_vocabulary_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vocabulary_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vocabulary_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vocabulary_filter_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vocabulary_filter_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vocabulary_filter_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vocabulary_filter_method", arg in
             bnd :: bnds
       in
       let bnds =
         match v_show_speaker_label with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "show_speaker_label", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pii_entity_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pii_entity_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_partial_results_stability with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "partial_results_stability", arg in
             bnd :: bnds
       in
       let bnds =
         match v_language_model_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language_model_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language_code in
         ("language_code", arg) :: bnds
       in
       let bnds =
         match v_filter_partial_results with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "filter_partial_results", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_partial_results_stabilization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_partial_results_stabilization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_redaction_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_redaction_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_identification_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_identification_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : elements__amazon_transcribe_processor_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elements__amazon_transcribe_processor_configuration

[@@@deriving.end]

type elements__kinesis_data_stream_sink_configuration = {
  insights_target : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : elements__kinesis_data_stream_sink_configuration) -> ()

let yojson_of_elements__kinesis_data_stream_sink_configuration =
  (function
   | { insights_target = v_insights_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_insights_target
         in
         ("insights_target", arg) :: bnds
       in
       `Assoc bnds
    : elements__kinesis_data_stream_sink_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elements__kinesis_data_stream_sink_configuration

[@@@deriving.end]

type elements__lambda_function_sink_configuration = {
  insights_target : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elements__lambda_function_sink_configuration) -> ()

let yojson_of_elements__lambda_function_sink_configuration =
  (function
   | { insights_target = v_insights_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_insights_target
         in
         ("insights_target", arg) :: bnds
       in
       `Assoc bnds
    : elements__lambda_function_sink_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elements__lambda_function_sink_configuration

[@@@deriving.end]

type elements__s3_recording_sink_configuration = {
  destination : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elements__s3_recording_sink_configuration) -> ()

let yojson_of_elements__s3_recording_sink_configuration =
  (function
   | { destination = v_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_destination with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destination", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : elements__s3_recording_sink_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elements__s3_recording_sink_configuration

[@@@deriving.end]

type elements__sns_topic_sink_configuration = {
  insights_target : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elements__sns_topic_sink_configuration) -> ()

let yojson_of_elements__sns_topic_sink_configuration =
  (function
   | { insights_target = v_insights_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_insights_target
         in
         ("insights_target", arg) :: bnds
       in
       `Assoc bnds
    : elements__sns_topic_sink_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elements__sns_topic_sink_configuration

[@@@deriving.end]

type elements__sqs_queue_sink_configuration = {
  insights_target : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elements__sqs_queue_sink_configuration) -> ()

let yojson_of_elements__sqs_queue_sink_configuration =
  (function
   | { insights_target = v_insights_target } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_insights_target
         in
         ("insights_target", arg) :: bnds
       in
       `Assoc bnds
    : elements__sqs_queue_sink_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elements__sqs_queue_sink_configuration

[@@@deriving.end]

type elements__voice_analytics_processor_configuration = {
  speaker_search_status : string prop;
  voice_tone_analysis_status : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : elements__voice_analytics_processor_configuration) -> ()

let yojson_of_elements__voice_analytics_processor_configuration =
  (function
   | {
       speaker_search_status = v_speaker_search_status;
       voice_tone_analysis_status = v_voice_tone_analysis_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_voice_tone_analysis_status
         in
         ("voice_tone_analysis_status", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_speaker_search_status
         in
         ("speaker_search_status", arg) :: bnds
       in
       `Assoc bnds
    : elements__voice_analytics_processor_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elements__voice_analytics_processor_configuration

[@@@deriving.end]

type elements = {
  type_ : string prop; [@key "type"]
  amazon_transcribe_call_analytics_processor_configuration :
    elements__amazon_transcribe_call_analytics_processor_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  amazon_transcribe_processor_configuration :
    elements__amazon_transcribe_processor_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kinesis_data_stream_sink_configuration :
    elements__kinesis_data_stream_sink_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  lambda_function_sink_configuration :
    elements__lambda_function_sink_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  s3_recording_sink_configuration :
    elements__s3_recording_sink_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sns_topic_sink_configuration :
    elements__sns_topic_sink_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sqs_queue_sink_configuration :
    elements__sqs_queue_sink_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  voice_analytics_processor_configuration :
    elements__voice_analytics_processor_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elements) -> ()

let yojson_of_elements =
  (function
   | {
       type_ = v_type_;
       amazon_transcribe_call_analytics_processor_configuration =
         v_amazon_transcribe_call_analytics_processor_configuration;
       amazon_transcribe_processor_configuration =
         v_amazon_transcribe_processor_configuration;
       kinesis_data_stream_sink_configuration =
         v_kinesis_data_stream_sink_configuration;
       lambda_function_sink_configuration =
         v_lambda_function_sink_configuration;
       s3_recording_sink_configuration =
         v_s3_recording_sink_configuration;
       sns_topic_sink_configuration = v_sns_topic_sink_configuration;
       sqs_queue_sink_configuration = v_sqs_queue_sink_configuration;
       voice_analytics_processor_configuration =
         v_voice_analytics_processor_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_voice_analytics_processor_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elements__voice_analytics_processor_configuration)
               v_voice_analytics_processor_configuration
           in
           let bnd =
             "voice_analytics_processor_configuration", arg
           in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sqs_queue_sink_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elements__sqs_queue_sink_configuration)
               v_sqs_queue_sink_configuration
           in
           let bnd = "sqs_queue_sink_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_sns_topic_sink_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elements__sns_topic_sink_configuration)
               v_sns_topic_sink_configuration
           in
           let bnd = "sns_topic_sink_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_s3_recording_sink_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elements__s3_recording_sink_configuration)
               v_s3_recording_sink_configuration
           in
           let bnd = "s3_recording_sink_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_lambda_function_sink_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elements__lambda_function_sink_configuration)
               v_lambda_function_sink_configuration
           in
           let bnd = "lambda_function_sink_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kinesis_data_stream_sink_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elements__kinesis_data_stream_sink_configuration)
               v_kinesis_data_stream_sink_configuration
           in
           let bnd = "kinesis_data_stream_sink_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_amazon_transcribe_processor_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elements__amazon_transcribe_processor_configuration)
               v_amazon_transcribe_processor_configuration
           in
           let bnd =
             "amazon_transcribe_processor_configuration", arg
           in
           bnd :: bnds
       in
       let bnds =
         if
           Stdlib.( = ) []
             v_amazon_transcribe_call_analytics_processor_configuration
         then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_elements__amazon_transcribe_call_analytics_processor_configuration)
               v_amazon_transcribe_call_analytics_processor_configuration
           in
           let bnd =
             ( "amazon_transcribe_call_analytics_processor_configuration",
               arg )
           in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : elements -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elements

[@@@deriving.end]

type real_time_alert_configuration__rules__issue_detection_configuration = {
  rule_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       real_time_alert_configuration__rules__issue_detection_configuration) ->
  ()

let yojson_of_real_time_alert_configuration__rules__issue_detection_configuration
    =
  (function
   | { rule_name = v_rule_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_name in
         ("rule_name", arg) :: bnds
       in
       `Assoc bnds
    : real_time_alert_configuration__rules__issue_detection_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_real_time_alert_configuration__rules__issue_detection_configuration

[@@@deriving.end]

type real_time_alert_configuration__rules__keyword_match_configuration = {
  keywords : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  negate : bool prop option; [@option]
  rule_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       real_time_alert_configuration__rules__keyword_match_configuration) ->
  ()

let yojson_of_real_time_alert_configuration__rules__keyword_match_configuration
    =
  (function
   | {
       keywords = v_keywords;
       negate = v_negate;
       rule_name = v_rule_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_name in
         ("rule_name", arg) :: bnds
       in
       let bnds =
         match v_negate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "negate", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_keywords then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_keywords
           in
           let bnd = "keywords", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : real_time_alert_configuration__rules__keyword_match_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_real_time_alert_configuration__rules__keyword_match_configuration

[@@@deriving.end]

type real_time_alert_configuration__rules__sentiment_configuration = {
  rule_name : string prop;
  sentiment_type : string prop;
  time_period : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       real_time_alert_configuration__rules__sentiment_configuration) ->
  ()

let yojson_of_real_time_alert_configuration__rules__sentiment_configuration
    =
  (function
   | {
       rule_name = v_rule_name;
       sentiment_type = v_sentiment_type;
       time_period = v_time_period;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_time_period in
         ("time_period", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sentiment_type
         in
         ("sentiment_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_rule_name in
         ("rule_name", arg) :: bnds
       in
       `Assoc bnds
    : real_time_alert_configuration__rules__sentiment_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_real_time_alert_configuration__rules__sentiment_configuration

[@@@deriving.end]

type real_time_alert_configuration__rules = {
  type_ : string prop; [@key "type"]
  issue_detection_configuration :
    real_time_alert_configuration__rules__issue_detection_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  keyword_match_configuration :
    real_time_alert_configuration__rules__keyword_match_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sentiment_configuration :
    real_time_alert_configuration__rules__sentiment_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : real_time_alert_configuration__rules) -> ()

let yojson_of_real_time_alert_configuration__rules =
  (function
   | {
       type_ = v_type_;
       issue_detection_configuration =
         v_issue_detection_configuration;
       keyword_match_configuration = v_keyword_match_configuration;
       sentiment_configuration = v_sentiment_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_sentiment_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_real_time_alert_configuration__rules__sentiment_configuration)
               v_sentiment_configuration
           in
           let bnd = "sentiment_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_keyword_match_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_real_time_alert_configuration__rules__keyword_match_configuration)
               v_keyword_match_configuration
           in
           let bnd = "keyword_match_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_issue_detection_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_real_time_alert_configuration__rules__issue_detection_configuration)
               v_issue_detection_configuration
           in
           let bnd = "issue_detection_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : real_time_alert_configuration__rules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_real_time_alert_configuration__rules

[@@@deriving.end]

type real_time_alert_configuration = {
  disabled : bool prop option; [@option]
  rules : real_time_alert_configuration__rules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : real_time_alert_configuration) -> ()

let yojson_of_real_time_alert_configuration =
  (function
   | { disabled = v_disabled; rules = v_rules } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_real_time_alert_configuration__rules)
               v_rules
           in
           let bnd = "rules", arg in
           bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : real_time_alert_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_real_time_alert_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration = {
  name : string prop;
  resource_access_role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  elements : elements list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  real_time_alert_configuration : real_time_alert_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       aws_chimesdkmediapipelines_media_insights_pipeline_configuration) ->
  ()

let yojson_of_aws_chimesdkmediapipelines_media_insights_pipeline_configuration
    =
  (function
   | {
       name = v_name;
       resource_access_role_arn = v_resource_access_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       elements = v_elements;
       real_time_alert_configuration =
         v_real_time_alert_configuration;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_real_time_alert_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_real_time_alert_configuration)
               v_real_time_alert_configuration
           in
           let bnd = "real_time_alert_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_elements then bnds
         else
           let arg =
             (yojson_of_list yojson_of_elements) v_elements
           in
           let bnd = "elements", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_access_role_arn
         in
         ("resource_access_role_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : aws_chimesdkmediapipelines_media_insights_pipeline_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_aws_chimesdkmediapipelines_media_insights_pipeline_configuration

[@@@deriving.end]

let elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings
    ?content_redaction_output ?output_encryption_kms_key_id
    ~data_access_role_arn ~output_location () :
    elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings
    =
  {
    content_redaction_output;
    data_access_role_arn;
    output_encryption_kms_key_id;
    output_location;
  }

let elements__amazon_transcribe_call_analytics_processor_configuration
    ?call_analytics_stream_categories ?content_identification_type
    ?content_redaction_type ?enable_partial_results_stabilization
    ?filter_partial_results ?language_model_name
    ?partial_results_stability ?pii_entity_types
    ?vocabulary_filter_method ?vocabulary_filter_name
    ?vocabulary_name ?(post_call_analytics_settings = [])
    ~language_code () :
    elements__amazon_transcribe_call_analytics_processor_configuration
    =
  {
    call_analytics_stream_categories;
    content_identification_type;
    content_redaction_type;
    enable_partial_results_stabilization;
    filter_partial_results;
    language_code;
    language_model_name;
    partial_results_stability;
    pii_entity_types;
    vocabulary_filter_method;
    vocabulary_filter_name;
    vocabulary_name;
    post_call_analytics_settings;
  }

let elements__amazon_transcribe_processor_configuration
    ?content_identification_type ?content_redaction_type
    ?enable_partial_results_stabilization ?filter_partial_results
    ?language_model_name ?partial_results_stability ?pii_entity_types
    ?show_speaker_label ?vocabulary_filter_method
    ?vocabulary_filter_name ?vocabulary_name ~language_code () :
    elements__amazon_transcribe_processor_configuration =
  {
    content_identification_type;
    content_redaction_type;
    enable_partial_results_stabilization;
    filter_partial_results;
    language_code;
    language_model_name;
    partial_results_stability;
    pii_entity_types;
    show_speaker_label;
    vocabulary_filter_method;
    vocabulary_filter_name;
    vocabulary_name;
  }

let elements__kinesis_data_stream_sink_configuration ~insights_target
    () : elements__kinesis_data_stream_sink_configuration =
  { insights_target }

let elements__lambda_function_sink_configuration ~insights_target ()
    : elements__lambda_function_sink_configuration =
  { insights_target }

let elements__s3_recording_sink_configuration ?destination () :
    elements__s3_recording_sink_configuration =
  { destination }

let elements__sns_topic_sink_configuration ~insights_target () :
    elements__sns_topic_sink_configuration =
  { insights_target }

let elements__sqs_queue_sink_configuration ~insights_target () :
    elements__sqs_queue_sink_configuration =
  { insights_target }

let elements__voice_analytics_processor_configuration
    ~speaker_search_status ~voice_tone_analysis_status () :
    elements__voice_analytics_processor_configuration =
  { speaker_search_status; voice_tone_analysis_status }

let elements
    ?(amazon_transcribe_call_analytics_processor_configuration = [])
    ?(amazon_transcribe_processor_configuration = [])
    ?(kinesis_data_stream_sink_configuration = [])
    ?(lambda_function_sink_configuration = [])
    ?(s3_recording_sink_configuration = [])
    ?(sns_topic_sink_configuration = [])
    ?(sqs_queue_sink_configuration = [])
    ?(voice_analytics_processor_configuration = []) ~type_ () :
    elements =
  {
    type_;
    amazon_transcribe_call_analytics_processor_configuration;
    amazon_transcribe_processor_configuration;
    kinesis_data_stream_sink_configuration;
    lambda_function_sink_configuration;
    s3_recording_sink_configuration;
    sns_topic_sink_configuration;
    sqs_queue_sink_configuration;
    voice_analytics_processor_configuration;
  }

let real_time_alert_configuration__rules__issue_detection_configuration
    ~rule_name () :
    real_time_alert_configuration__rules__issue_detection_configuration
    =
  { rule_name }

let real_time_alert_configuration__rules__keyword_match_configuration
    ?negate ~keywords ~rule_name () :
    real_time_alert_configuration__rules__keyword_match_configuration
    =
  { keywords; negate; rule_name }

let real_time_alert_configuration__rules__sentiment_configuration
    ~rule_name ~sentiment_type ~time_period () :
    real_time_alert_configuration__rules__sentiment_configuration =
  { rule_name; sentiment_type; time_period }

let real_time_alert_configuration__rules
    ?(issue_detection_configuration = [])
    ?(keyword_match_configuration = [])
    ?(sentiment_configuration = []) ~type_ () :
    real_time_alert_configuration__rules =
  {
    type_;
    issue_detection_configuration;
    keyword_match_configuration;
    sentiment_configuration;
  }

let real_time_alert_configuration ?disabled ~rules () :
    real_time_alert_configuration =
  { disabled; rules }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_chimesdkmediapipelines_media_insights_pipeline_configuration
    ?tags ?tags_all ?(real_time_alert_configuration = []) ?timeouts
    ~name ~resource_access_role_arn ~elements () :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration
    =
  {
    name;
    resource_access_role_arn;
    tags;
    tags_all;
    elements;
    real_time_alert_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_access_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?tags_all ?(real_time_alert_configuration = [])
    ?timeouts ~name ~resource_access_role_arn ~elements __id =
  let __type =
    "aws_chimesdkmediapipelines_media_insights_pipeline_configuration"
  in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_access_role_arn =
         Prop.computed __type __id "resource_access_role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chimesdkmediapipelines_media_insights_pipeline_configuration
        (aws_chimesdkmediapipelines_media_insights_pipeline_configuration
           ?tags ?tags_all ~real_time_alert_configuration ?timeouts
           ~name ~resource_access_role_arn ~elements ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?tags_all
    ?(real_time_alert_configuration = []) ?timeouts ~name
    ~resource_access_role_arn ~elements __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?tags_all ~real_time_alert_configuration ?timeouts
      ~name ~resource_access_role_arn ~elements __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
