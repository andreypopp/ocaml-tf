(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings

val elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings :
  ?content_redaction_output:string prop ->
  ?output_encryption_kms_key_id:string prop ->
  data_access_role_arn:string prop ->
  output_location:string prop ->
  unit ->
  elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings

type elements__amazon_transcribe_call_analytics_processor_configuration

val elements__amazon_transcribe_call_analytics_processor_configuration :
  ?call_analytics_stream_categories:string prop list ->
  ?content_identification_type:string prop ->
  ?content_redaction_type:string prop ->
  ?enable_partial_results_stabilization:bool prop ->
  ?filter_partial_results:bool prop ->
  ?language_model_name:string prop ->
  ?partial_results_stability:string prop ->
  ?pii_entity_types:string prop ->
  ?vocabulary_filter_method:string prop ->
  ?vocabulary_filter_name:string prop ->
  ?vocabulary_name:string prop ->
  ?post_call_analytics_settings:
    elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings
    list ->
  language_code:string prop ->
  unit ->
  elements__amazon_transcribe_call_analytics_processor_configuration

type elements__amazon_transcribe_processor_configuration

val elements__amazon_transcribe_processor_configuration :
  ?content_identification_type:string prop ->
  ?content_redaction_type:string prop ->
  ?enable_partial_results_stabilization:bool prop ->
  ?filter_partial_results:bool prop ->
  ?language_model_name:string prop ->
  ?partial_results_stability:string prop ->
  ?pii_entity_types:string prop ->
  ?show_speaker_label:bool prop ->
  ?vocabulary_filter_method:string prop ->
  ?vocabulary_filter_name:string prop ->
  ?vocabulary_name:string prop ->
  language_code:string prop ->
  unit ->
  elements__amazon_transcribe_processor_configuration

type elements__kinesis_data_stream_sink_configuration

val elements__kinesis_data_stream_sink_configuration :
  insights_target:string prop ->
  unit ->
  elements__kinesis_data_stream_sink_configuration

type elements__lambda_function_sink_configuration

val elements__lambda_function_sink_configuration :
  insights_target:string prop ->
  unit ->
  elements__lambda_function_sink_configuration

type elements__s3_recording_sink_configuration

val elements__s3_recording_sink_configuration :
  ?destination:string prop ->
  unit ->
  elements__s3_recording_sink_configuration

type elements__sns_topic_sink_configuration

val elements__sns_topic_sink_configuration :
  insights_target:string prop ->
  unit ->
  elements__sns_topic_sink_configuration

type elements__sqs_queue_sink_configuration

val elements__sqs_queue_sink_configuration :
  insights_target:string prop ->
  unit ->
  elements__sqs_queue_sink_configuration

type elements__voice_analytics_processor_configuration

val elements__voice_analytics_processor_configuration :
  speaker_search_status:string prop ->
  voice_tone_analysis_status:string prop ->
  unit ->
  elements__voice_analytics_processor_configuration

type elements

val elements :
  ?amazon_transcribe_call_analytics_processor_configuration:
    elements__amazon_transcribe_call_analytics_processor_configuration
    list ->
  ?amazon_transcribe_processor_configuration:
    elements__amazon_transcribe_processor_configuration list ->
  ?kinesis_data_stream_sink_configuration:
    elements__kinesis_data_stream_sink_configuration list ->
  ?lambda_function_sink_configuration:
    elements__lambda_function_sink_configuration list ->
  ?s3_recording_sink_configuration:
    elements__s3_recording_sink_configuration list ->
  ?sns_topic_sink_configuration:
    elements__sns_topic_sink_configuration list ->
  ?sqs_queue_sink_configuration:
    elements__sqs_queue_sink_configuration list ->
  ?voice_analytics_processor_configuration:
    elements__voice_analytics_processor_configuration list ->
  type_:string prop ->
  unit ->
  elements

type real_time_alert_configuration__rules__issue_detection_configuration

val real_time_alert_configuration__rules__issue_detection_configuration :
  rule_name:string prop ->
  unit ->
  real_time_alert_configuration__rules__issue_detection_configuration

type real_time_alert_configuration__rules__keyword_match_configuration

val real_time_alert_configuration__rules__keyword_match_configuration :
  ?negate:bool prop ->
  keywords:string prop list ->
  rule_name:string prop ->
  unit ->
  real_time_alert_configuration__rules__keyword_match_configuration

type real_time_alert_configuration__rules__sentiment_configuration

val real_time_alert_configuration__rules__sentiment_configuration :
  rule_name:string prop ->
  sentiment_type:string prop ->
  time_period:float prop ->
  unit ->
  real_time_alert_configuration__rules__sentiment_configuration

type real_time_alert_configuration__rules

val real_time_alert_configuration__rules :
  ?issue_detection_configuration:
    real_time_alert_configuration__rules__issue_detection_configuration
    list ->
  ?keyword_match_configuration:
    real_time_alert_configuration__rules__keyword_match_configuration
    list ->
  ?sentiment_configuration:
    real_time_alert_configuration__rules__sentiment_configuration
    list ->
  type_:string prop ->
  unit ->
  real_time_alert_configuration__rules

type real_time_alert_configuration

val real_time_alert_configuration :
  ?disabled:bool prop ->
  rules:real_time_alert_configuration__rules list ->
  unit ->
  real_time_alert_configuration

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration

val aws_chimesdkmediapipelines_media_insights_pipeline_configuration :
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?real_time_alert_configuration:real_time_alert_configuration list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_access_role_arn:string prop ->
  elements:elements list ->
  unit ->
  aws_chimesdkmediapipelines_media_insights_pipeline_configuration

val yojson_of_aws_chimesdkmediapipelines_media_insights_pipeline_configuration :
  aws_chimesdkmediapipelines_media_insights_pipeline_configuration ->
  json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_access_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?real_time_alert_configuration:real_time_alert_configuration list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_access_role_arn:string prop ->
  elements:elements list ->
  string ->
  t

val make :
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?real_time_alert_configuration:real_time_alert_configuration list ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_access_role_arn:string prop ->
  elements:elements list ->
  string ->
  t Tf_core.resource
