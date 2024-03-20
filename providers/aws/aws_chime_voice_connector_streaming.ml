(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type media_insights_configuration = {
  configuration_arn : string prop option; [@option]
      (** configuration_arn *)
  disabled : bool prop option; [@option]  (** disabled *)
}
[@@deriving yojson_of]
(** media_insights_configuration *)

type aws_chime_voice_connector_streaming = {
  data_retention : float prop;  (** data_retention *)
  disabled : bool prop option; [@option]  (** disabled *)
  id : string prop option; [@option]  (** id *)
  streaming_notification_targets : string prop list option; [@option]
      (** streaming_notification_targets *)
  voice_connector_id : string prop;  (** voice_connector_id *)
  media_insights_configuration : media_insights_configuration list;
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_streaming *)

let media_insights_configuration ?configuration_arn ?disabled () :
    media_insights_configuration =
  { configuration_arn; disabled }

let aws_chime_voice_connector_streaming ?disabled ?id
    ?streaming_notification_targets ~data_retention
    ~voice_connector_id ~media_insights_configuration () :
    aws_chime_voice_connector_streaming =
  {
    data_retention;
    disabled;
    id;
    streaming_notification_targets;
    voice_connector_id;
    media_insights_configuration;
  }

type t = {
  data_retention : float prop;
  disabled : bool prop;
  id : string prop;
  streaming_notification_targets : string list prop;
  voice_connector_id : string prop;
}

let make ?disabled ?id ?streaming_notification_targets
    ~data_retention ~voice_connector_id ~media_insights_configuration
    __id =
  let __type = "aws_chime_voice_connector_streaming" in
  let __attrs =
    ({
       data_retention = Prop.computed __type __id "data_retention";
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       streaming_notification_targets =
         Prop.computed __type __id "streaming_notification_targets";
       voice_connector_id =
         Prop.computed __type __id "voice_connector_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector_streaming
        (aws_chime_voice_connector_streaming ?disabled ?id
           ?streaming_notification_targets ~data_retention
           ~voice_connector_id ~media_insights_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?id ?streaming_notification_targets
    ~data_retention ~voice_connector_id ~media_insights_configuration
    __id =
  let (r : _ Tf_core.resource) =
    make ?disabled ?id ?streaming_notification_targets
      ~data_retention ~voice_connector_id
      ~media_insights_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
