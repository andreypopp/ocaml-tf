(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_chime_voice_connector_logging = {
  enable_media_metric_logs : bool prop option; [@option]
  enable_sip_logs : bool prop option; [@option]
  id : string prop option; [@option]
  voice_connector_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chime_voice_connector_logging) -> ()

let yojson_of_aws_chime_voice_connector_logging =
  (function
   | {
       enable_media_metric_logs = v_enable_media_metric_logs;
       enable_sip_logs = v_enable_sip_logs;
       id = v_id;
       voice_connector_id = v_voice_connector_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_voice_connector_id
         in
         ("voice_connector_id", arg) :: bnds
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
         match v_enable_sip_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_sip_logs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_media_metric_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_media_metric_logs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_chime_voice_connector_logging ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chime_voice_connector_logging

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
