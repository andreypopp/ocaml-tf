(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type media_insights_configuration = {
  configuration_arn : string prop option; [@option]
  disabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : media_insights_configuration) -> ()

let yojson_of_media_insights_configuration =
  (function
   | {
       configuration_arn = v_configuration_arn;
       disabled = v_disabled;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_configuration_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "configuration_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : media_insights_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_media_insights_configuration

[@@@deriving.end]

type aws_chime_voice_connector_streaming = {
  data_retention : float prop;
  disabled : bool prop option; [@option]
  id : string prop option; [@option]
  streaming_notification_targets : string prop list option; [@option]
  voice_connector_id : string prop;
  media_insights_configuration : media_insights_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chime_voice_connector_streaming) -> ()

let yojson_of_aws_chime_voice_connector_streaming =
  (function
   | {
       data_retention = v_data_retention;
       disabled = v_disabled;
       id = v_id;
       streaming_notification_targets =
         v_streaming_notification_targets;
       voice_connector_id = v_voice_connector_id;
       media_insights_configuration = v_media_insights_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_media_insights_configuration
             v_media_insights_configuration
         in
         ("media_insights_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_voice_connector_id
         in
         ("voice_connector_id", arg) :: bnds
       in
       let bnds =
         match v_streaming_notification_targets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "streaming_notification_targets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_data_retention in
         ("data_retention", arg) :: bnds
       in
       `Assoc bnds
    : aws_chime_voice_connector_streaming ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chime_voice_connector_streaming

[@@@deriving.end]

let media_insights_configuration ?configuration_arn ?disabled () :
    media_insights_configuration =
  { configuration_arn; disabled }

let aws_chime_voice_connector_streaming ?disabled ?id
    ?streaming_notification_targets
    ?(media_insights_configuration = []) ~data_retention
    ~voice_connector_id () : aws_chime_voice_connector_streaming =
  {
    data_retention;
    disabled;
    id;
    streaming_notification_targets;
    voice_connector_id;
    media_insights_configuration;
  }

type t = {
  tf_name : string;
  data_retention : float prop;
  disabled : bool prop;
  id : string prop;
  streaming_notification_targets : string list prop;
  voice_connector_id : string prop;
}

let make ?disabled ?id ?streaming_notification_targets
    ?(media_insights_configuration = []) ~data_retention
    ~voice_connector_id __id =
  let __type = "aws_chime_voice_connector_streaming" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?streaming_notification_targets
           ~media_insights_configuration ~data_retention
           ~voice_connector_id ());
    attrs = __attrs;
  }

let register ?tf_module ?disabled ?id ?streaming_notification_targets
    ?(media_insights_configuration = []) ~data_retention
    ~voice_connector_id __id =
  let (r : _ Tf_core.resource) =
    make ?disabled ?id ?streaming_notification_targets
      ~media_insights_configuration ~data_retention
      ~voice_connector_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
