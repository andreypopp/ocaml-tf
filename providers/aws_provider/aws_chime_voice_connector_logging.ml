(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector_logging = {
  enable_media_metric_logs : bool option; [@option]
      (** enable_media_metric_logs *)
  enable_sip_logs : bool option; [@option]  (** enable_sip_logs *)
  voice_connector_id : string;  (** voice_connector_id *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_logging *)

let aws_chime_voice_connector_logging ?enable_media_metric_logs
    ?enable_sip_logs ~voice_connector_id __resource_id =
  let __resource_type = "aws_chime_voice_connector_logging" in
  let __resource =
    { enable_media_metric_logs; enable_sip_logs; voice_connector_id }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_logging __resource);
  ()
