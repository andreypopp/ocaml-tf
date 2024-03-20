(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_dialogflow_agent = {
  api_version : string prop option; [@option]
  avatar_uri : string prop option; [@option]
  classification_threshold : float prop option; [@option]
  default_language_code : string prop;
  description : string prop option; [@option]
  display_name : string prop;
  enable_logging : bool prop option; [@option]
  id : string prop option; [@option]
  match_mode : string prop option; [@option]
  project : string prop option; [@option]
  supported_language_codes : string prop list option; [@option]
  tier : string prop option; [@option]
  time_zone : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dialogflow_agent) -> ()

let yojson_of_google_dialogflow_agent =
  (function
   | {
       api_version = v_api_version;
       avatar_uri = v_avatar_uri;
       classification_threshold = v_classification_threshold;
       default_language_code = v_default_language_code;
       description = v_description;
       display_name = v_display_name;
       enable_logging = v_enable_logging;
       id = v_id;
       match_mode = v_match_mode;
       project = v_project;
       supported_language_codes = v_supported_language_codes;
       tier = v_tier;
       time_zone = v_time_zone;
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
         let arg = yojson_of_prop yojson_of_string v_time_zone in
         ("time_zone", arg) :: bnds
       in
       let bnds =
         match v_tier with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tier", arg in
             bnd :: bnds
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
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         match v_match_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "match_mode", arg in
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
         match v_enable_logging with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_logging", arg in
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
         match v_classification_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "classification_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_avatar_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "avatar_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_api_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_version", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_dialogflow_agent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dialogflow_agent

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dialogflow_agent ?api_version ?avatar_uri
    ?classification_threshold ?description ?enable_logging ?id
    ?match_mode ?project ?supported_language_codes ?tier ?timeouts
    ~default_language_code ~display_name ~time_zone () :
    google_dialogflow_agent =
  {
    api_version;
    avatar_uri;
    classification_threshold;
    default_language_code;
    description;
    display_name;
    enable_logging;
    id;
    match_mode;
    project;
    supported_language_codes;
    tier;
    time_zone;
    timeouts;
  }

type t = {
  api_version : string prop;
  avatar_uri : string prop;
  avatar_uri_backend : string prop;
  classification_threshold : float prop;
  default_language_code : string prop;
  description : string prop;
  display_name : string prop;
  enable_logging : bool prop;
  id : string prop;
  match_mode : string prop;
  project : string prop;
  supported_language_codes : string list prop;
  tier : string prop;
  time_zone : string prop;
}

let make ?api_version ?avatar_uri ?classification_threshold
    ?description ?enable_logging ?id ?match_mode ?project
    ?supported_language_codes ?tier ?timeouts ~default_language_code
    ~display_name ~time_zone __id =
  let __type = "google_dialogflow_agent" in
  let __attrs =
    ({
       api_version = Prop.computed __type __id "api_version";
       avatar_uri = Prop.computed __type __id "avatar_uri";
       avatar_uri_backend =
         Prop.computed __type __id "avatar_uri_backend";
       classification_threshold =
         Prop.computed __type __id "classification_threshold";
       default_language_code =
         Prop.computed __type __id "default_language_code";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enable_logging = Prop.computed __type __id "enable_logging";
       id = Prop.computed __type __id "id";
       match_mode = Prop.computed __type __id "match_mode";
       project = Prop.computed __type __id "project";
       supported_language_codes =
         Prop.computed __type __id "supported_language_codes";
       tier = Prop.computed __type __id "tier";
       time_zone = Prop.computed __type __id "time_zone";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dialogflow_agent
        (google_dialogflow_agent ?api_version ?avatar_uri
           ?classification_threshold ?description ?enable_logging ?id
           ?match_mode ?project ?supported_language_codes ?tier
           ?timeouts ~default_language_code ~display_name ~time_zone
           ());
    attrs = __attrs;
  }

let register ?tf_module ?api_version ?avatar_uri
    ?classification_threshold ?description ?enable_logging ?id
    ?match_mode ?project ?supported_language_codes ?tier ?timeouts
    ~default_language_code ~display_name ~time_zone __id =
  let (r : _ Tf_core.resource) =
    make ?api_version ?avatar_uri ?classification_threshold
      ?description ?enable_logging ?id ?match_mode ?project
      ?supported_language_codes ?tier ?timeouts
      ~default_language_code ~display_name ~time_zone __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
