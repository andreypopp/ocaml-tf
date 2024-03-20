(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_chime_voice_connector_logging ?enable_media_metric_logs
    ?enable_sip_logs ?id ~voice_connector_id () :
    aws_chime_voice_connector_logging =
  {
    enable_media_metric_logs;
    enable_sip_logs;
    id;
    voice_connector_id;
  }

type t = {
  enable_media_metric_logs : bool prop;
  enable_sip_logs : bool prop;
  id : string prop;
  voice_connector_id : string prop;
}

let make ?enable_media_metric_logs ?enable_sip_logs ?id
    ~voice_connector_id __id =
  let __type = "aws_chime_voice_connector_logging" in
  let __attrs =
    ({
       enable_media_metric_logs =
         Prop.computed __type __id "enable_media_metric_logs";
       enable_sip_logs = Prop.computed __type __id "enable_sip_logs";
       id = Prop.computed __type __id "id";
       voice_connector_id =
         Prop.computed __type __id "voice_connector_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chime_voice_connector_logging
        (aws_chime_voice_connector_logging ?enable_media_metric_logs
           ?enable_sip_logs ?id ~voice_connector_id ());
    attrs = __attrs;
  }

let register ?tf_module ?enable_media_metric_logs ?enable_sip_logs
    ?id ~voice_connector_id __id =
  let (r : _ Tf_core.resource) =
    make ?enable_media_metric_logs ?enable_sip_logs ?id
      ~voice_connector_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
