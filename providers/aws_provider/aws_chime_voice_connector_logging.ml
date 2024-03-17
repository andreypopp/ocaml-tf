(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector_logging = {
  enable_media_metric_logs : bool prop option; [@option]
      (** enable_media_metric_logs *)
  enable_sip_logs : bool prop option; [@option]
      (** enable_sip_logs *)
  id : string prop option; [@option]  (** id *)
  voice_connector_id : string prop;  (** voice_connector_id *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector_logging *)

type t = {
  enable_media_metric_logs : bool prop;
  enable_sip_logs : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

let aws_chime_voice_connector_logging ?enable_media_metric_logs
    ?enable_sip_logs ?id ~voice_connector_id __resource_id =
  let __resource_type = "aws_chime_voice_connector_logging" in
  let __resource =
    ({
       enable_media_metric_logs;
       enable_sip_logs;
       id;
       voice_connector_id;
     }
      : aws_chime_voice_connector_logging)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector_logging __resource);
  let __resource_attributes =
    ({
       enable_media_metric_logs =
         Prop.computed __resource_type __resource_id
           "enable_media_metric_logs";
       enable_sip_logs =
         Prop.computed __resource_type __resource_id
           "enable_sip_logs";
       id = Prop.computed __resource_type __resource_id "id";
       voice_connector_id =
         Prop.computed __resource_type __resource_id
           "voice_connector_id";
     }
      : t)
  in
  __resource_attributes
