(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type android_settings = {
  allow_all_package_names : bool prop option; [@option]
  allowed_package_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : android_settings) -> ()

let yojson_of_android_settings =
  (function
   | {
       allow_all_package_names = v_allow_all_package_names;
       allowed_package_names = v_allowed_package_names;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_allowed_package_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_package_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all_package_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all_package_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : android_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_android_settings

[@@@deriving.end]

type ios_settings = {
  allow_all_bundle_ids : bool prop option; [@option]
  allowed_bundle_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ios_settings) -> ()

let yojson_of_ios_settings =
  (function
   | {
       allow_all_bundle_ids = v_allow_all_bundle_ids;
       allowed_bundle_ids = v_allowed_bundle_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_allowed_bundle_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_bundle_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all_bundle_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all_bundle_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ios_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ios_settings

[@@@deriving.end]

type testing_options = {
  testing_challenge : string prop option; [@option]
  testing_score : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : testing_options) -> ()

let yojson_of_testing_options =
  (function
   | {
       testing_challenge = v_testing_challenge;
       testing_score = v_testing_score;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_testing_score with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "testing_score", arg in
             bnd :: bnds
       in
       let bnds =
         match v_testing_challenge with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "testing_challenge", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : testing_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_testing_options

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

type waf_settings = {
  waf_feature : string prop;
  waf_service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : waf_settings) -> ()

let yojson_of_waf_settings =
  (function
   | { waf_feature = v_waf_feature; waf_service = v_waf_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_waf_service in
         ("waf_service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_waf_feature in
         ("waf_feature", arg) :: bnds
       in
       `Assoc bnds
    : waf_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_waf_settings

[@@@deriving.end]

type web_settings = {
  allow_all_domains : bool prop option; [@option]
  allow_amp_traffic : bool prop option; [@option]
  allowed_domains : string prop list option; [@option]
  challenge_security_preference : string prop option; [@option]
  integration_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : web_settings) -> ()

let yojson_of_web_settings =
  (function
   | {
       allow_all_domains = v_allow_all_domains;
       allow_amp_traffic = v_allow_amp_traffic;
       allowed_domains = v_allowed_domains;
       challenge_security_preference =
         v_challenge_security_preference;
       integration_type = v_integration_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_integration_type
         in
         ("integration_type", arg) :: bnds
       in
       let bnds =
         match v_challenge_security_preference with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "challenge_security_preference", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_domains", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_amp_traffic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_amp_traffic", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_all_domains with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_all_domains", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : web_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_web_settings

[@@@deriving.end]

type google_recaptcha_enterprise_key = {
  display_name : string prop;
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  project : string prop option; [@option]
  android_settings : android_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ios_settings : ios_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  testing_options : testing_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
  waf_settings : waf_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  web_settings : web_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_recaptcha_enterprise_key) -> ()

let yojson_of_google_recaptcha_enterprise_key =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       labels = v_labels;
       project = v_project;
       android_settings = v_android_settings;
       ios_settings = v_ios_settings;
       testing_options = v_testing_options;
       timeouts = v_timeouts;
       waf_settings = v_waf_settings;
       web_settings = v_web_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_web_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_web_settings) v_web_settings
           in
           let bnd = "web_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_waf_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_waf_settings) v_waf_settings
           in
           let bnd = "waf_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_testing_options then bnds
         else
           let arg =
             (yojson_of_list yojson_of_testing_options)
               v_testing_options
           in
           let bnd = "testing_options", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ios_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ios_settings) v_ios_settings
           in
           let bnd = "ios_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_android_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_android_settings)
               v_android_settings
           in
           let bnd = "android_settings", arg in
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
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
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
       `Assoc bnds
    : google_recaptcha_enterprise_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_recaptcha_enterprise_key

[@@@deriving.end]

let android_settings ?allow_all_package_names ?allowed_package_names
    () : android_settings =
  { allow_all_package_names; allowed_package_names }

let ios_settings ?allow_all_bundle_ids ?allowed_bundle_ids () :
    ios_settings =
  { allow_all_bundle_ids; allowed_bundle_ids }

let testing_options ?testing_challenge ?testing_score () :
    testing_options =
  { testing_challenge; testing_score }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let waf_settings ~waf_feature ~waf_service () : waf_settings =
  { waf_feature; waf_service }

let web_settings ?allow_all_domains ?allow_amp_traffic
    ?allowed_domains ?challenge_security_preference ~integration_type
    () : web_settings =
  {
    allow_all_domains;
    allow_amp_traffic;
    allowed_domains;
    challenge_security_preference;
    integration_type;
  }

let google_recaptcha_enterprise_key ?id ?labels ?project
    ?(android_settings = []) ?(ios_settings = [])
    ?(testing_options = []) ?timeouts ?(waf_settings = [])
    ?(web_settings = []) ~display_name () :
    google_recaptcha_enterprise_key =
  {
    display_name;
    id;
    labels;
    project;
    android_settings;
    ios_settings;
    testing_options;
    timeouts;
    waf_settings;
    web_settings;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let make ?id ?labels ?project ?(android_settings = [])
    ?(ios_settings = []) ?(testing_options = []) ?timeouts
    ?(waf_settings = []) ?(web_settings = []) ~display_name __id =
  let __type = "google_recaptcha_enterprise_key" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_recaptcha_enterprise_key
        (google_recaptcha_enterprise_key ?id ?labels ?project
           ~android_settings ~ios_settings ~testing_options ?timeouts
           ~waf_settings ~web_settings ~display_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?project ?(android_settings = [])
    ?(ios_settings = []) ?(testing_options = []) ?timeouts
    ?(waf_settings = []) ?(web_settings = []) ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?project ~android_settings ~ios_settings
      ~testing_options ?timeouts ~waf_settings ~web_settings
      ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
