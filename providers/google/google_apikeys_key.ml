(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type restrictions__android_key_restrictions__allowed_applications = {
  package_name : string prop;
  sha1_fingerprint : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       restrictions__android_key_restrictions__allowed_applications) ->
  ()

let yojson_of_restrictions__android_key_restrictions__allowed_applications
    =
  (function
   | {
       package_name = v_package_name;
       sha1_fingerprint = v_sha1_fingerprint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_sha1_fingerprint
         in
         ("sha1_fingerprint", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_package_name in
         ("package_name", arg) :: bnds
       in
       `Assoc bnds
    : restrictions__android_key_restrictions__allowed_applications ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_restrictions__android_key_restrictions__allowed_applications

[@@@deriving.end]

type restrictions__android_key_restrictions = {
  allowed_applications :
    restrictions__android_key_restrictions__allowed_applications list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrictions__android_key_restrictions) -> ()

let yojson_of_restrictions__android_key_restrictions =
  (function
   | { allowed_applications = v_allowed_applications } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_allowed_applications then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restrictions__android_key_restrictions__allowed_applications)
               v_allowed_applications
           in
           let bnd = "allowed_applications", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : restrictions__android_key_restrictions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrictions__android_key_restrictions

[@@@deriving.end]

type restrictions__api_targets = {
  methods : string prop list option; [@option]
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrictions__api_targets) -> ()

let yojson_of_restrictions__api_targets =
  (function
   | { methods = v_methods; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         match v_methods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "methods", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : restrictions__api_targets -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrictions__api_targets

[@@@deriving.end]

type restrictions__browser_key_restrictions = {
  allowed_referrers : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrictions__browser_key_restrictions) -> ()

let yojson_of_restrictions__browser_key_restrictions =
  (function
   | { allowed_referrers = v_allowed_referrers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_allowed_referrers then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_referrers
           in
           let bnd = "allowed_referrers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : restrictions__browser_key_restrictions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrictions__browser_key_restrictions

[@@@deriving.end]

type restrictions__ios_key_restrictions = {
  allowed_bundle_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrictions__ios_key_restrictions) -> ()

let yojson_of_restrictions__ios_key_restrictions =
  (function
   | { allowed_bundle_ids = v_allowed_bundle_ids } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_allowed_bundle_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_bundle_ids
           in
           let bnd = "allowed_bundle_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : restrictions__ios_key_restrictions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrictions__ios_key_restrictions

[@@@deriving.end]

type restrictions__server_key_restrictions = {
  allowed_ips : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrictions__server_key_restrictions) -> ()

let yojson_of_restrictions__server_key_restrictions =
  (function
   | { allowed_ips = v_allowed_ips } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_allowed_ips then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_ips
           in
           let bnd = "allowed_ips", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : restrictions__server_key_restrictions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrictions__server_key_restrictions

[@@@deriving.end]

type restrictions = {
  android_key_restrictions :
    restrictions__android_key_restrictions list;
      [@default []] [@yojson_drop_default ( = )]
  api_targets : restrictions__api_targets list;
      [@default []] [@yojson_drop_default ( = )]
  browser_key_restrictions :
    restrictions__browser_key_restrictions list;
      [@default []] [@yojson_drop_default ( = )]
  ios_key_restrictions : restrictions__ios_key_restrictions list;
      [@default []] [@yojson_drop_default ( = )]
  server_key_restrictions :
    restrictions__server_key_restrictions list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : restrictions) -> ()

let yojson_of_restrictions =
  (function
   | {
       android_key_restrictions = v_android_key_restrictions;
       api_targets = v_api_targets;
       browser_key_restrictions = v_browser_key_restrictions;
       ios_key_restrictions = v_ios_key_restrictions;
       server_key_restrictions = v_server_key_restrictions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_server_key_restrictions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restrictions__server_key_restrictions)
               v_server_key_restrictions
           in
           let bnd = "server_key_restrictions", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ios_key_restrictions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restrictions__ios_key_restrictions)
               v_ios_key_restrictions
           in
           let bnd = "ios_key_restrictions", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_browser_key_restrictions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restrictions__browser_key_restrictions)
               v_browser_key_restrictions
           in
           let bnd = "browser_key_restrictions", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_api_targets then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restrictions__api_targets)
               v_api_targets
           in
           let bnd = "api_targets", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_android_key_restrictions then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_restrictions__android_key_restrictions)
               v_android_key_restrictions
           in
           let bnd = "android_key_restrictions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : restrictions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_restrictions

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

type google_apikeys_key = {
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  restrictions : restrictions list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apikeys_key) -> ()

let yojson_of_google_apikeys_key =
  (function
   | {
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       project = v_project;
       restrictions = v_restrictions;
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
         if [] = v_restrictions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_restrictions) v_restrictions
           in
           let bnd = "restrictions", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_apikeys_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apikeys_key

[@@@deriving.end]

let restrictions__android_key_restrictions__allowed_applications
    ~package_name ~sha1_fingerprint () :
    restrictions__android_key_restrictions__allowed_applications =
  { package_name; sha1_fingerprint }

let restrictions__android_key_restrictions ~allowed_applications () :
    restrictions__android_key_restrictions =
  { allowed_applications }

let restrictions__api_targets ?methods ~service () :
    restrictions__api_targets =
  { methods; service }

let restrictions__browser_key_restrictions ~allowed_referrers () :
    restrictions__browser_key_restrictions =
  { allowed_referrers }

let restrictions__ios_key_restrictions ~allowed_bundle_ids () :
    restrictions__ios_key_restrictions =
  { allowed_bundle_ids }

let restrictions__server_key_restrictions ~allowed_ips () :
    restrictions__server_key_restrictions =
  { allowed_ips }

let restrictions ?(android_key_restrictions = []) ?(api_targets = [])
    ?(browser_key_restrictions = []) ?(ios_key_restrictions = [])
    ?(server_key_restrictions = []) () : restrictions =
  {
    android_key_restrictions;
    api_targets;
    browser_key_restrictions;
    ios_key_restrictions;
    server_key_restrictions;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apikeys_key ?display_name ?id ?project
    ?(restrictions = []) ?timeouts ~name () : google_apikeys_key =
  { display_name; id; name; project; restrictions; timeouts }

type t = {
  tf_name : string;
  display_name : string prop;
  id : string prop;
  key_string : string prop;
  name : string prop;
  project : string prop;
  uid : string prop;
}

let make ?display_name ?id ?project ?(restrictions = []) ?timeouts
    ~name __id =
  let __type = "google_apikeys_key" in
  let __attrs =
    ({
       tf_name = __id;
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       key_string = Prop.computed __type __id "key_string";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apikeys_key
        (google_apikeys_key ?display_name ?id ?project ~restrictions
           ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project
    ?(restrictions = []) ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ~restrictions ?timeouts ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
