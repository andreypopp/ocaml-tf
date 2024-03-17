(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector_streaming__media_insights_configuration = {
  configuration_arn : string prop option; [@option]
      (** configuration_arn *)
  disabled : bool prop option; [@option]  (** disabled *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_streaming__media_insights_configuration *)

type aws_chime_voice_connector_streaming = {
  data_retention : float prop;  (** data_retention *)
  disabled : bool prop option; [@option]  (** disabled *)
  id : string prop option; [@option]  (** id *)
  streaming_notification_targets : string prop list option; [@option]
      (** streaming_notification_targets *)
  voice_connector_id : string prop;  (** voice_connector_id *)
  media_insights_configuration :
    aws_chime_voice_connector_streaming__media_insights_configuration
    list;
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_streaming *)

let aws_chime_voice_connector_streaming ?disabled ?id
    ?streaming_notification_targets ~data_retention
    ~voice_connector_id ~media_insights_configuration __resource_id =
  let __resource_type = "aws_chime_voice_connector_streaming" in
  let __resource =
    {
      data_retention;
      disabled;
      id;
      streaming_notification_targets;
      voice_connector_id;
      media_insights_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_streaming __resource);
  ()
