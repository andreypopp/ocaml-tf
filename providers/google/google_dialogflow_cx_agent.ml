(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type advanced_settings__audio_export_gcs_destination = {
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : advanced_settings__audio_export_gcs_destination) -> ()

let yojson_of_advanced_settings__audio_export_gcs_destination =
  (function
   | { uri = v_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_settings__audio_export_gcs_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_settings__audio_export_gcs_destination

[@@@deriving.end]

type advanced_settings__dtmf_settings = {
  enabled : bool prop option; [@option]
  finish_digit : string prop option; [@option]
  max_digits : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_settings__dtmf_settings) -> ()

let yojson_of_advanced_settings__dtmf_settings =
  (function
   | {
       enabled = v_enabled;
       finish_digit = v_finish_digit;
       max_digits = v_max_digits;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_max_digits with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_digits", arg in
             bnd :: bnds
       in
       let bnds =
         match v_finish_digit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "finish_digit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : advanced_settings__dtmf_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_settings__dtmf_settings

[@@@deriving.end]

type advanced_settings = {
  audio_export_gcs_destination :
    advanced_settings__audio_export_gcs_destination list;
  dtmf_settings : advanced_settings__dtmf_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : advanced_settings) -> ()

let yojson_of_advanced_settings =
  (function
   | {
       audio_export_gcs_destination = v_audio_export_gcs_destination;
       dtmf_settings = v_dtmf_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_settings__dtmf_settings
             v_dtmf_settings
         in
         ("dtmf_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_advanced_settings__audio_export_gcs_destination
             v_audio_export_gcs_destination
         in
         ("audio_export_gcs_destination", arg) :: bnds
       in
       `Assoc bnds
    : advanced_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_advanced_settings

[@@@deriving.end]

type git_integration_settings__github_settings = {
  access_token : string prop option; [@option]
  branches : string prop list option; [@option]
  display_name : string prop option; [@option]
  repository_uri : string prop option; [@option]
  tracking_branch : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : git_integration_settings__github_settings) -> ()

let yojson_of_git_integration_settings__github_settings =
  (function
   | {
       access_token = v_access_token;
       branches = v_branches;
       display_name = v_display_name;
       repository_uri = v_repository_uri;
       tracking_branch = v_tracking_branch;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tracking_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tracking_branch", arg in
             bnd :: bnds
       in
       let bnds =
         match v_repository_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repository_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_branches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "branches", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_token", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : git_integration_settings__github_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_git_integration_settings__github_settings

[@@@deriving.end]

type git_integration_settings = {
  github_settings : git_integration_settings__github_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : git_integration_settings) -> ()

let yojson_of_git_integration_settings =
  (function
   | { github_settings = v_github_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_git_integration_settings__github_settings
             v_github_settings
         in
         ("github_settings", arg) :: bnds
       in
       `Assoc bnds
    : git_integration_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_git_integration_settings

[@@@deriving.end]

type speech_to_text_settings = {
  enable_speech_adaptation : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : speech_to_text_settings) -> ()

let yojson_of_speech_to_text_settings =
  (function
   | { enable_speech_adaptation = v_enable_speech_adaptation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_speech_adaptation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_speech_adaptation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : speech_to_text_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_speech_to_text_settings

[@@@deriving.end]

type text_to_speech_settings = {
  synthesize_speech_configs : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : text_to_speech_settings) -> ()

let yojson_of_text_to_speech_settings =
  (function
   | { synthesize_speech_configs = v_synthesize_speech_configs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_synthesize_speech_configs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "synthesize_speech_configs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : text_to_speech_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_text_to_speech_settings

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

type google_dialogflow_cx_agent = {
  avatar_uri : string prop option; [@option]
  default_language_code : string prop;
  description : string prop option; [@option]
  display_name : string prop;
  enable_spell_correction : bool prop option; [@option]
  enable_stackdriver_logging : bool prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  project : string prop option; [@option]
  security_settings : string prop option; [@option]
  supported_language_codes : string prop list option; [@option]
  time_zone : string prop;
  advanced_settings : advanced_settings list;
  git_integration_settings : git_integration_settings list;
  speech_to_text_settings : speech_to_text_settings list;
  text_to_speech_settings : text_to_speech_settings list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_cx_agent) -> ()

let yojson_of_google_dialogflow_cx_agent =
  (function
   | {
       avatar_uri = v_avatar_uri;
       default_language_code = v_default_language_code;
       description = v_description;
       display_name = v_display_name;
       enable_spell_correction = v_enable_spell_correction;
       enable_stackdriver_logging = v_enable_stackdriver_logging;
       id = v_id;
       location = v_location;
       project = v_project;
       security_settings = v_security_settings;
       supported_language_codes = v_supported_language_codes;
       time_zone = v_time_zone;
       advanced_settings = v_advanced_settings;
       git_integration_settings = v_git_integration_settings;
       speech_to_text_settings = v_speech_to_text_settings;
       text_to_speech_settings = v_text_to_speech_settings;
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
         let arg =
           yojson_of_list yojson_of_text_to_speech_settings
             v_text_to_speech_settings
         in
         ("text_to_speech_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_speech_to_text_settings
             v_speech_to_text_settings
         in
         ("speech_to_text_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_git_integration_settings
             v_git_integration_settings
         in
         ("git_integration_settings", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_advanced_settings
             v_advanced_settings
         in
         ("advanced_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         match v_supported_language_codes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "supported_language_codes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_security_settings with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "security_settings", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_stackdriver_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_stackdriver_logging", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_spell_correction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_spell_correction", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_default_language_code
         in
         ("default_language_code", arg) :: bnds
       in
       let bnds =
         match v_avatar_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "avatar_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dialogflow_cx_agent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_cx_agent

[@@@deriving.end]

let advanced_settings__audio_export_gcs_destination ?uri () :
    advanced_settings__audio_export_gcs_destination =
  { uri }

let advanced_settings__dtmf_settings ?enabled ?finish_digit
    ?max_digits () : advanced_settings__dtmf_settings =
  { enabled; finish_digit; max_digits }

let advanced_settings ~audio_export_gcs_destination ~dtmf_settings ()
    : advanced_settings =
  { audio_export_gcs_destination; dtmf_settings }

let git_integration_settings__github_settings ?access_token ?branches
    ?display_name ?repository_uri ?tracking_branch () :
    git_integration_settings__github_settings =
  {
    access_token;
    branches;
    display_name;
    repository_uri;
    tracking_branch;
  }

let git_integration_settings ~github_settings () :
    git_integration_settings =
  { github_settings }

let speech_to_text_settings ?enable_speech_adaptation () :
    speech_to_text_settings =
  { enable_speech_adaptation }

let text_to_speech_settings ?synthesize_speech_configs () :
    text_to_speech_settings =
  { synthesize_speech_configs }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_cx_agent ?avatar_uri ?description
    ?enable_spell_correction ?enable_stackdriver_logging ?id ?project
    ?security_settings ?supported_language_codes ?timeouts
    ~default_language_code ~display_name ~location ~time_zone
    ~advanced_settings ~git_integration_settings
    ~speech_to_text_settings ~text_to_speech_settings () :
    google_dialogflow_cx_agent =
  {
    avatar_uri;
    default_language_code;
    description;
    display_name;
    enable_spell_correction;
    enable_stackdriver_logging;
    id;
    location;
    project;
    security_settings;
    supported_language_codes;
    time_zone;
    advanced_settings;
    git_integration_settings;
    speech_to_text_settings;
    text_to_speech_settings;
    timeouts;
  }

type t = {
  avatar_uri : string prop;
  default_language_code : string prop;
  description : string prop;
  display_name : string prop;
  enable_spell_correction : bool prop;
  enable_stackdriver_logging : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  security_settings : string prop;
  start_flow : string prop;
  supported_language_codes : string list prop;
  time_zone : string prop;
}

let make ?avatar_uri ?description ?enable_spell_correction
    ?enable_stackdriver_logging ?id ?project ?security_settings
    ?supported_language_codes ?timeouts ~default_language_code
    ~display_name ~location ~time_zone ~advanced_settings
    ~git_integration_settings ~speech_to_text_settings
    ~text_to_speech_settings __id =
  let __type = "google_dialogflow_cx_agent" in
  let __attrs =
    ({
       avatar_uri = Prop.computed __type __id "avatar_uri";
       default_language_code =
         Prop.computed __type __id "default_language_code";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enable_spell_correction =
         Prop.computed __type __id "enable_spell_correction";
       enable_stackdriver_logging =
         Prop.computed __type __id "enable_stackdriver_logging";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       security_settings =
         Prop.computed __type __id "security_settings";
       start_flow = Prop.computed __type __id "start_flow";
       supported_language_codes =
         Prop.computed __type __id "supported_language_codes";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_cx_agent
        (google_dialogflow_cx_agent ?avatar_uri ?description
           ?enable_spell_correction ?enable_stackdriver_logging ?id
           ?project ?security_settings ?supported_language_codes
           ?timeouts ~default_language_code ~display_name ~location
           ~time_zone ~advanced_settings ~git_integration_settings
           ~speech_to_text_settings ~text_to_speech_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?avatar_uri ?description
    ?enable_spell_correction ?enable_stackdriver_logging ?id ?project
    ?security_settings ?supported_language_codes ?timeouts
    ~default_language_code ~display_name ~location ~time_zone
    ~advanced_settings ~git_integration_settings
    ~speech_to_text_settings ~text_to_speech_settings __id =
  let (r : _ Tf_core.resource) =
    make ?avatar_uri ?description ?enable_spell_correction
      ?enable_stackdriver_logging ?id ?project ?security_settings
      ?supported_language_codes ?timeouts ~default_language_code
      ~display_name ~location ~time_zone ~advanced_settings
      ~git_integration_settings ~speech_to_text_settings
      ~text_to_speech_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
