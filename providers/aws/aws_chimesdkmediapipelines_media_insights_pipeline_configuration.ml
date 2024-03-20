(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings = {
  content_redaction_output : string prop option; [@option]
      (** content_redaction_output *)
  data_access_role_arn : string prop;  (** data_access_role_arn *)
  output_encryption_kms_key_id : string prop option; [@option]
      (** output_encryption_kms_key_id *)
  output_location : string prop;  (** output_location *)
}
[@@deriving yojson_of]
(** elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings *)

type elements__amazon_transcribe_call_analytics_processor_configuration = {
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
    elements__amazon_transcribe_call_analytics_processor_configuration__post_call_analytics_settings
    list;
}
[@@deriving yojson_of]
(** elements__amazon_transcribe_call_analytics_processor_configuration *)

type elements__amazon_transcribe_processor_configuration = {
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
(** elements__amazon_transcribe_processor_configuration *)

type elements__kinesis_data_stream_sink_configuration = {
  insights_target : string prop;  (** insights_target *)
}
[@@deriving yojson_of]
(** elements__kinesis_data_stream_sink_configuration *)

type elements__lambda_function_sink_configuration = {
  insights_target : string prop;  (** insights_target *)
}
[@@deriving yojson_of]
(** elements__lambda_function_sink_configuration *)

type elements__s3_recording_sink_configuration = {
  destination : string prop option; [@option]  (** destination *)
}
[@@deriving yojson_of]
(** elements__s3_recording_sink_configuration *)

type elements__sns_topic_sink_configuration = {
  insights_target : string prop;  (** insights_target *)
}
[@@deriving yojson_of]
(** elements__sns_topic_sink_configuration *)

type elements__sqs_queue_sink_configuration = {
  insights_target : string prop;  (** insights_target *)
}
[@@deriving yojson_of]
(** elements__sqs_queue_sink_configuration *)

type elements__voice_analytics_processor_configuration = {
  speaker_search_status : string prop;  (** speaker_search_status *)
  voice_tone_analysis_status : string prop;
      (** voice_tone_analysis_status *)
}
[@@deriving yojson_of]
(** elements__voice_analytics_processor_configuration *)

type elements = {
  type_ : string prop; [@key "type"]  (** type *)
  amazon_transcribe_call_analytics_processor_configuration :
    elements__amazon_transcribe_call_analytics_processor_configuration
    list;
  amazon_transcribe_processor_configuration :
    elements__amazon_transcribe_processor_configuration list;
  kinesis_data_stream_sink_configuration :
    elements__kinesis_data_stream_sink_configuration list;
  lambda_function_sink_configuration :
    elements__lambda_function_sink_configuration list;
  s3_recording_sink_configuration :
    elements__s3_recording_sink_configuration list;
  sns_topic_sink_configuration :
    elements__sns_topic_sink_configuration list;
  sqs_queue_sink_configuration :
    elements__sqs_queue_sink_configuration list;
  voice_analytics_processor_configuration :
    elements__voice_analytics_processor_configuration list;
}
[@@deriving yojson_of]
(** elements *)

type real_time_alert_configuration__rules__issue_detection_configuration = {
  rule_name : string prop;  (** rule_name *)
}
[@@deriving yojson_of]
(** real_time_alert_configuration__rules__issue_detection_configuration *)

type real_time_alert_configuration__rules__keyword_match_configuration = {
  keywords : string prop list;  (** keywords *)
  negate : bool prop option; [@option]  (** negate *)
  rule_name : string prop;  (** rule_name *)
}
[@@deriving yojson_of]
(** real_time_alert_configuration__rules__keyword_match_configuration *)

type real_time_alert_configuration__rules__sentiment_configuration = {
  rule_name : string prop;  (** rule_name *)
  sentiment_type : string prop;  (** sentiment_type *)
  time_period : float prop;  (** time_period *)
}
[@@deriving yojson_of]
(** real_time_alert_configuration__rules__sentiment_configuration *)

type real_time_alert_configuration__rules = {
  type_ : string prop; [@key "type"]  (** type *)
  issue_detection_configuration :
    real_time_alert_configuration__rules__issue_detection_configuration
    list;
  keyword_match_configuration :
    real_time_alert_configuration__rules__keyword_match_configuration
    list;
  sentiment_configuration :
    real_time_alert_configuration__rules__sentiment_configuration
    list;
}
[@@deriving yojson_of]
(** real_time_alert_configuration__rules *)

type real_time_alert_configuration = {
  disabled : bool prop option; [@option]  (** disabled *)
  rules : real_time_alert_configuration__rules list;
}
[@@deriving yojson_of]
(** real_time_alert_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_chimesdkmediapipelines_media_insights_pipeline_configuration = {
  name : string prop;  (** name *)
  resource_access_role_arn : string prop;
      (** resource_access_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  elements : elements list;
  real_time_alert_configuration : real_time_alert_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_chimesdkmediapipelines_media_insights_pipeline_configuration *)

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
    ?vocabulary_name ~language_code ~post_call_analytics_settings ()
    :
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

let elements ~type_
    ~amazon_transcribe_call_analytics_processor_configuration
    ~amazon_transcribe_processor_configuration
    ~kinesis_data_stream_sink_configuration
    ~lambda_function_sink_configuration
    ~s3_recording_sink_configuration ~sns_topic_sink_configuration
    ~sqs_queue_sink_configuration
    ~voice_analytics_processor_configuration () : elements =
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

let real_time_alert_configuration__rules ~type_
    ~issue_detection_configuration ~keyword_match_configuration
    ~sentiment_configuration () :
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
    ?tags ?tags_all ?timeouts ~name ~resource_access_role_arn
    ~elements ~real_time_alert_configuration () :
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
  arn : string prop;
  id : string prop;
  name : string prop;
  resource_access_role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?tags_all ?timeouts ~name ~resource_access_role_arn
    ~elements ~real_time_alert_configuration __id =
  let __type =
    "aws_chimesdkmediapipelines_media_insights_pipeline_configuration"
  in
  let __attrs =
    ({
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
           ?tags ?tags_all ?timeouts ~name ~resource_access_role_arn
           ~elements ~real_time_alert_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?tags_all ?timeouts ~name
    ~resource_access_role_arn ~elements
    ~real_time_alert_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?tags_all ?timeouts ~name ~resource_access_role_arn
      ~elements ~real_time_alert_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
