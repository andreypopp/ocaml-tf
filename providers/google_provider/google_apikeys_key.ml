(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apikeys_key__restrictions__android_key_restrictions__allowed_applications = {
  package_name : string;  (** The package name of the application. *)
  sha1_fingerprint : string;
      (** The SHA1 fingerprint of the application. For example, both sha1 formats are acceptable : DA:39:A3:EE:5E:6B:4B:0D:32:55:BF:EF:95:60:18:90:AF:D8:07:09 or DA39A3EE5E6B4B0D3255BFEF95601890AFD80709. Output format is the latter. *)
}
[@@deriving yojson_of]
(** A list of Android applications that are allowed to make API calls with this key. *)

type google_apikeys_key__restrictions__android_key_restrictions = {
  allowed_applications :
    google_apikeys_key__restrictions__android_key_restrictions__allowed_applications
    list;
}
[@@deriving yojson_of]
(** The Android apps that are allowed to use the key. *)

type google_apikeys_key__restrictions__api_targets = {
  methods : string list option; [@option]
      (** Optional. List of one or more methods that can be called. If empty, all methods for the service are allowed. A wildcard (\*\) can be used as the last symbol. Valid examples: `google.cloud.translate.v2.TranslateService.GetSupportedLanguage` `TranslateText` `Get*` `translate.googleapis.com.Get*` *)
  service : string;
      (** The service for this restriction. It should be the canonical service name, for example: `translate.googleapis.com`. You can use `gcloud services list` to get a list of services that are enabled in the project. *)
}
[@@deriving yojson_of]
(** A restriction for a specific service and optionally one or more specific methods. Requests are allowed if they match any of these restrictions. If no restrictions are specified, all targets are allowed. *)

type google_apikeys_key__restrictions__browser_key_restrictions = {
  allowed_referrers : string list;
      (** A list of regular expressions for the referrer URLs that are allowed to make API calls with this key. *)
}
[@@deriving yojson_of]
(** The HTTP referrers (websites) that are allowed to use the key. *)

type google_apikeys_key__restrictions__ios_key_restrictions = {
  allowed_bundle_ids : string list;
      (** A list of bundle IDs that are allowed when making API calls with this key. *)
}
[@@deriving yojson_of]
(** The iOS apps that are allowed to use the key. *)

type google_apikeys_key__restrictions__server_key_restrictions = {
  allowed_ips : string list;
      (** A list of the caller IP addresses that are allowed to make API calls with this key. *)
}
[@@deriving yojson_of]
(** The IP addresses of callers that are allowed to use the key. *)

type google_apikeys_key__restrictions = {
  android_key_restrictions :
    google_apikeys_key__restrictions__android_key_restrictions list;
  api_targets : google_apikeys_key__restrictions__api_targets list;
  browser_key_restrictions :
    google_apikeys_key__restrictions__browser_key_restrictions list;
  ios_key_restrictions :
    google_apikeys_key__restrictions__ios_key_restrictions list;
  server_key_restrictions :
    google_apikeys_key__restrictions__server_key_restrictions list;
}
[@@deriving yojson_of]
(** Key restrictions. *)

type google_apikeys_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apikeys_key__timeouts *)

type google_apikeys_key = {
  display_name : string option; [@option]
      (** Human-readable display name of this API key. Modifiable by user. *)
  name : string;
      (** The resource name of the key. The name must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. In another word, the name must match the regular expression: `[a-z]([a-z0-9-]{0,61}[a-z0-9])?`. *)
  restrictions : google_apikeys_key__restrictions list;
  timeouts : google_apikeys_key__timeouts option;
}
[@@deriving yojson_of]
(** google_apikeys_key *)

let google_apikeys_key ?display_name ?timeouts ~name ~restrictions
    __resource_id =
  let __resource_type = "google_apikeys_key" in
  let __resource = { display_name; name; restrictions; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apikeys_key __resource);
  ()
