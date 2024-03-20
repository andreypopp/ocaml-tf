(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type restrictions__android_key_restrictions__allowed_applications = {
  package_name : string prop;
      (** The package name of the application. *)
  sha1_fingerprint : string prop;
      (** The SHA1 fingerprint of the application. For example, both sha1 formats are acceptable : DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the latter. *)
}
[@@deriving yojson_of]
(** A list of Android applications that are allowed to make API calls with this key. *)

type restrictions__android_key_restrictions = {
  allowed_applications :
    restrictions__android_key_restrictions__allowed_applications list;
}
[@@deriving yojson_of]
(** The Android apps that are allowed to use the key. *)

type restrictions__api_targets = {
  methods : string prop list option; [@option]
      (** Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (\*\) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*` *)
  service : string prop;
      (** The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use `gcloud services list` to get a list of services that are enabled in the project. *)
}
[@@deriving yojson_of]
(** A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed. *)

type restrictions__browser_key_restrictions = {
  allowed_referrers : string prop list;
      (** A list of regular expressions for the referrer URLs that are allowed to make API calls with this key. *)
}
[@@deriving yojson_of]
(** The HTTP referrers (websites) that are allowed to use the key. *)

type restrictions__ios_key_restrictions = {
  allowed_bundle_ids : string prop list;
      (** A list of bundle IDs that are allowed when making API calls with this key. *)
}
[@@deriving yojson_of]
(** The iOS apps that are allowed to use the key. *)

type restrictions__server_key_restrictions = {
  allowed_ips : string prop list;
      (** A list of the caller IP addresses that are allowed to make API calls with this key. *)
}
[@@deriving yojson_of]
(** The IP addresses of callers that are allowed to use the key. *)

type restrictions = {
  android_key_restrictions :
    restrictions__android_key_restrictions list;
  api_targets : restrictions__api_targets list;
  browser_key_restrictions :
    restrictions__browser_key_restrictions list;
  ios_key_restrictions : restrictions__ios_key_restrictions list;
  server_key_restrictions :
    restrictions__server_key_restrictions list;
}
[@@deriving yojson_of]
(** Key restrictions. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_apikeys_key = {
  display_name : string prop option; [@option]
      (** Human-readable display name of this API key. Modifiable by user. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  restrictions : restrictions list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_apikeys_key *)

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

let restrictions ~android_key_restrictions ~api_targets
    ~browser_key_restrictions ~ios_key_restrictions
    ~server_key_restrictions () : restrictions =
  {
    android_key_restrictions;
    api_targets;
    browser_key_restrictions;
    ios_key_restrictions;
    server_key_restrictions;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apikeys_key ?display_name ?id ?project ?timeouts ~name
    ~restrictions () : google_apikeys_key =
  { display_name; id; name; project; restrictions; timeouts }

type t = {
  display_name : string prop;
  id : string prop;
  key_string : string prop;
  name : string prop;
  project : string prop;
  uid : string prop;
}

let make ?display_name ?id ?project ?timeouts ~name ~restrictions
    __id =
  let __type = "google_apikeys_key" in
  let __attrs =
    ({
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
        (google_apikeys_key ?display_name ?id ?project ?timeouts
           ~name ~restrictions ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id ?project ?timeouts ~name
    ~restrictions __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?project ?timeouts ~name ~restrictions
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
