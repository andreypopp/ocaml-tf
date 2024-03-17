(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings = {
  content_redaction_output : string prop option; [@option]
      (** content_redaction_output *)
  data_access_role_arn : string prop;  (** data_access_role_arn *)
  output_encryption_kms_key_id : string prop option; [@option]
      (** output_encryption_kms_key_id *)
  output_location : string prop;  (** output_location *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__amazon_transcribe_call_analytics_processor_configuration = {
  call_analytics_stream_categories : string prop list option;
      [@option]
      (** call_analytics_stream_categories *)
  content_identification_type : string prop option; [@option]
      (** content_identification_type *)
  content_redaction_type : string prop option; [@option]
      (** content_redaction_type *)
  enable_partial_results_stabilization : bool prop option; [@option]
      (** enable_partial_results_stabilization *)
  filter_partial_results : bool prop option; [@option]
      (** filter_partial_results *)
  language_code : string prop;  (** language_code *)
  language_model_name : string prop option; [@option]
      (** language_model_name *)
  partial_results_stability : string prop option; [@option]
      (** partial_results_stability *)
  pii_entity_types : string prop option; [@option]
      (** pii_entity_types *)
  vocabulary_filter_method : string prop option; [@option]
      (** vocabulary_filter_method *)
  vocabulary_filter_name : string prop option; [@option]
      (** vocabulary_filter_name *)
  vocabulary_name : string prop option; [@option]
      (** vocabulary_name *)
  post_call_analytics_settings :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings
    list;
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__amazon_transcribe_call_analytics_processor_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__amazon_transcribe_processor_configuration = {
  content_identification_type : string prop option; [@option]
      (** content_identification_type *)
  content_redaction_type : string prop option; [@option]
      (** content_redaction_type *)
  enable_partial_results_stabilization : bool prop option; [@option]
      (** enable_partial_results_stabilization *)
  filter_partial_results : bool prop option; [@option]
      (** filter_partial_results *)
  language_code : string prop;  (** language_code *)
  language_model_name : string prop option; [@option]
      (** language_model_name *)
  partial_results_stability : string prop option; [@option]
      (** partial_results_stability *)
  pii_entity_types : string prop option; [@option]
      (** pii_entity_types *)
  show_speaker_label : bool prop option; [@option]
      (** show_speaker_label *)
  vocabulary_filter_method : string prop option; [@option]
      (** vocabulary_filter_method *)
  vocabulary_filter_name : string prop option; [@option]
      (** vocabulary_filter_name *)
  vocabulary_name : string prop option; [@option]
      (** vocabulary_name *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__amazon_transcribe_processor_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__kinesis_data_stream_sink_configuration = {
  insights_target : string prop;  (** insights_target *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__kinesis_data_stream_sink_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__lambda_function_sink_configuration = {
  insights_target : string prop;  (** insights_target *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__lambda_function_sink_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__s3_recording_sink_configuration = {
  destination : string prop option; [@option]  (** destination *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__s3_recording_sink_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__sns_topic_sink_configuration = {
  insights_target : string prop;  (** insights_target *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__sns_topic_sink_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__sqs_queue_sink_configuration = {
  insights_target : string prop;  (** insights_target *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__sqs_queue_sink_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__voice_analytics_processor_configuration = {
  speaker_search_status : string prop;  (** speaker_search_status *)
  voice_tone_analysis_status : string prop;
      (** voice_tone_analysis_status *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__voice_analytics_processor_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements = {
  type_ : string prop; [@key "type"]  (** type *)
  amazon_transcribe_call_analytics_processor_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__amazon_transcribe_call_analytics_processor_configuration
    list;
  amazon_transcribe_processor_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__amazon_transcribe_processor_configuration
    list;
  kinesis_data_stream_sink_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__kinesis_data_stream_sink_configuration
    list;
  lambda_function_sink_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__lambda_function_sink_configuration
    list;
  s3_recording_sink_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__s3_recording_sink_configuration
    list;
  sns_topic_sink_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__sns_topic_sink_configuration
    list;
  sqs_queue_sink_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__sqs_queue_sink_configuration
    list;
  voice_analytics_processor_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements__voice_analytics_processor_configuration
    list;
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules__issue_detection_configuration = {
  rule_name : string prop;  (** rule_name *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules__issue_detection_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules__keyword_match_configuration = {
  keywords : string prop list;  (** keywords *)
  negate : bool prop option; [@option]  (** negate *)
  rule_name : string prop;  (** rule_name *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules__keyword_match_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules__sentiment_configuration = {
  rule_name : string prop;  (** rule_name *)
  sentiment_type : string prop;  (** sentiment_type *)
  time_period : float prop;  (** time_period *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules__sentiment_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules = {
  type_ : string prop; [@key "type"]  (** type *)
  issue_detection_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules__issue_detection_configuration
    list;
  keyword_match_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules__keyword_match_configuration
    list;
  sentiment_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules__sentiment_configuration
    list;
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration = {
  disabled : bool prop option; [@option]  (** disabled *)
  rules :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration__rules
    list;
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration__timeouts *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration = {
  name : string prop;  (** name *)
  resource_access_role_arn : string prop;
      (** resource_access_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  elements :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__elements
    list;
  real_time_alert_configuration :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__real_time_alert_configuration
    list;
  timeouts :
    aws_chimesdkmediapipelines_media_insights_pipeline_configuration__timeouts
    option;
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration *)

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_access_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_chimesdkmediapipelines_media_insights_pipeline_configuration
    ?tags ?tags_all ?timeouts ~name ~resource_access_role_arn
    ~elements ~real_time_alert_configuration __resource_id =
  let __resource_type =
    "aws_chimesdkmediapipelines_media_insights_pipeline_configuration"
  in
  let __resource =
    ({
       name;
       resource_access_role_arn;
       tags;
       tags_all;
       elements;
       real_time_alert_configuration;
       timeouts;
     }
      : aws_chimesdkmediapipelines_media_insights_pipeline_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkmediapipelines_media_insights_pipeline_configuration
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       resource_access_role_arn =
         Prop.computed __resource_type __resource_id
           "resource_access_role_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
