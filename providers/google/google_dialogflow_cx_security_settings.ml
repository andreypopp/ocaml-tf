(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type audio_export_settings = {
  audio_export_pattern : string prop option; [@option]
  audio_format : string prop option; [@option]
  enable_audio_redaction : bool prop option; [@option]
  gcs_bucket : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : audio_export_settings) -> ()

let yojson_of_audio_export_settings =
  (function
   | {
       audio_export_pattern = v_audio_export_pattern;
       audio_format = v_audio_format;
       enable_audio_redaction = v_enable_audio_redaction;
       gcs_bucket = v_gcs_bucket;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_gcs_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gcs_bucket", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_audio_redaction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_audio_redaction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_format", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audio_export_pattern with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audio_export_pattern", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : audio_export_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_audio_export_settings

[@@@deriving.end]

type insights_export_settings = {
  enable_insights_export : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : insights_export_settings) -> ()

let yojson_of_insights_export_settings =
  (function
   | { enable_insights_export = v_enable_insights_export } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enable_insights_export
         in
         ("enable_insights_export", arg) :: bnds
       in
       `Assoc bnds
    : insights_export_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_insights_export_settings

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_dialogflow_cx_security_settings = {
  deidentify_template : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  inspect_template : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  purge_data_types : string prop list option; [@option]
  redaction_scope : string prop option; [@option]
  redaction_strategy : string prop option; [@option]
  retention_strategy : string prop option; [@option]
  retention_window_days : float prop option; [@option]
  audio_export_settings : audio_export_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  insights_export_settings : insights_export_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_cx_security_settings) -> ()

let yojson_of_google_dialogflow_cx_security_settings =
  (function
   | {
       deidentify_template = v_deidentify_template;
       display_name = v_display_name;
       id = v_id;
       inspect_template = v_inspect_template;
       location = v_location;
       project = v_project;
       purge_data_types = v_purge_data_types;
       redaction_scope = v_redaction_scope;
       redaction_strategy = v_redaction_strategy;
       retention_strategy = v_retention_strategy;
       retention_window_days = v_retention_window_days;
       audio_export_settings = v_audio_export_settings;
       insights_export_settings = v_insights_export_settings;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_insights_export_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_insights_export_settings)
               v_insights_export_settings
           in
           let bnd = "insights_export_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audio_export_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_audio_export_settings)
               v_audio_export_settings
           in
           let bnd = "audio_export_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_retention_window_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_window_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retention_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redaction_strategy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redaction_strategy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_redaction_scope with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "redaction_scope", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purge_data_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "purge_data_types", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_inspect_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "inspect_template", arg in
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_deidentify_template with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "deidentify_template", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dialogflow_cx_security_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_cx_security_settings

[@@@deriving.end]

let audio_export_settings ?audio_export_pattern ?audio_format
    ?enable_audio_redaction ?gcs_bucket () : audio_export_settings =
  {
    audio_export_pattern;
    audio_format;
    enable_audio_redaction;
    gcs_bucket;
  }

let insights_export_settings ~enable_insights_export () :
    insights_export_settings =
  { enable_insights_export }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_cx_security_settings ?deidentify_template ?id
    ?inspect_template ?project ?purge_data_types ?redaction_scope
    ?redaction_strategy ?retention_strategy ?retention_window_days
    ?(audio_export_settings = []) ?(insights_export_settings = [])
    ?timeouts ~display_name ~location () :
    google_dialogflow_cx_security_settings =
  {
    deidentify_template;
    display_name;
    id;
    inspect_template;
    location;
    project;
    purge_data_types;
    redaction_scope;
    redaction_strategy;
    retention_strategy;
    retention_window_days;
    audio_export_settings;
    insights_export_settings;
    timeouts;
  }

type t = {
  tf_name : string;
  deidentify_template : string prop;
  display_name : string prop;
  id : string prop;
  inspect_template : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  purge_data_types : string list prop;
  redaction_scope : string prop;
  redaction_strategy : string prop;
  retention_strategy : string prop;
  retention_window_days : float prop;
}

let make ?deidentify_template ?id ?inspect_template ?project
    ?purge_data_types ?redaction_scope ?redaction_strategy
    ?retention_strategy ?retention_window_days
    ?(audio_export_settings = []) ?(insights_export_settings = [])
    ?timeouts ~display_name ~location __id =
  let __type = "google_dialogflow_cx_security_settings" in
  let __attrs =
    ({
       tf_name = __id;
       deidentify_template =
         Prop.computed __type __id "deidentify_template";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       inspect_template =
         Prop.computed __type __id "inspect_template";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       purge_data_types =
         Prop.computed __type __id "purge_data_types";
       redaction_scope = Prop.computed __type __id "redaction_scope";
       redaction_strategy =
         Prop.computed __type __id "redaction_strategy";
       retention_strategy =
         Prop.computed __type __id "retention_strategy";
       retention_window_days =
         Prop.computed __type __id "retention_window_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_security_settings
        (google_dialogflow_cx_security_settings ?deidentify_template
           ?id ?inspect_template ?project ?purge_data_types
           ?redaction_scope ?redaction_strategy ?retention_strategy
           ?retention_window_days ~audio_export_settings
           ~insights_export_settings ?timeouts ~display_name
           ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?deidentify_template ?id ?inspect_template
    ?project ?purge_data_types ?redaction_scope ?redaction_strategy
    ?retention_strategy ?retention_window_days
    ?(audio_export_settings = []) ?(insights_export_settings = [])
    ?timeouts ~display_name ~location __id =
  let (r : _ Tf_core.resource) =
    make ?deidentify_template ?id ?inspect_template ?project
      ?purge_data_types ?redaction_scope ?redaction_strategy
      ?retention_strategy ?retention_window_days
      ~audio_export_settings ~insights_export_settings ?timeouts
      ~display_name ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
