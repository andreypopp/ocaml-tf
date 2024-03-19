(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type android_settings = {
  allow_all_package_names : bool prop option; [@option]
      (** If set to true, it means allowed_package_names will not be enforced. *)
  allowed_package_names : string prop list option; [@option]
      (** Android package names of apps allowed to use the key. Example: 'com.companyname.appname' *)
}
[@@deriving yojson_of]
(** Settings for keys that can be used by Android apps. *)

type ios_settings = {
  allow_all_bundle_ids : bool prop option; [@option]
      (** If set to true, it means allowed_bundle_ids will not be enforced. *)
  allowed_bundle_ids : string prop list option; [@option]
      (** iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.productname.appname' *)
}
[@@deriving yojson_of]
(** Settings for keys that can be used by iOS apps. *)

type testing_options = {
  testing_challenge : string prop option; [@option]
      (** For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if UNSOLVABLE_CHALLENGE. Possible values: TESTING_CHALLENGE_UNSPECIFIED, NOCAPTCHA, UNSOLVABLE_CHALLENGE *)
  testing_score : float prop option; [@option]
      (** All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive. *)
}
[@@deriving yojson_of]
(** Options for user acceptance testing. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type waf_settings = {
  waf_feature : string prop;
      (** Supported WAF features. For more information, see https://cloud.google.com/recaptcha-enterprise/docs/usecase#comparison_of_features. Possible values: CHALLENGE_PAGE, SESSION_TOKEN, ACTION_TOKEN, EXPRESS *)
  waf_service : string prop;
      (** The WAF service that uses this key. Possible values: CA, FASTLY *)
}
[@@deriving yojson_of]
(** Settings specific to keys that can be used for WAF (Web Application Firewall). *)

type web_settings = {
  allow_all_domains : bool prop option; [@option]
      (** If set to true, it means allowed_domains will not be enforced. *)
  allow_amp_traffic : bool prop option; [@option]
      (** If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type. *)
  allowed_domains : string prop list option; [@option]
      (** Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com' *)
  challenge_security_preference : string prop option; [@option]
      (** Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY *)
  integration_type : string prop;
      (** Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE *)
}
[@@deriving yojson_of]
(** Settings for keys that can be used by websites. *)

type google_recaptcha_enterprise_key = {
  display_name : string prop;
      (** Human-readable display name of this key. Modifiable by user. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  project : string prop option; [@option]
      (** The project for the resource *)
  android_settings : android_settings list;
  ios_settings : ios_settings list;
  testing_options : testing_options list;
  timeouts : timeouts option;
  waf_settings : waf_settings list;
  web_settings : web_settings list;
}
[@@deriving yojson_of]
(** google_recaptcha_enterprise_key *)

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

let google_recaptcha_enterprise_key ?id ?labels ?project ?timeouts
    ~display_name ~android_settings ~ios_settings ~testing_options
    ~waf_settings ~web_settings () : google_recaptcha_enterprise_key
    =
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
  create_time : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

let register ?tf_module ?id ?labels ?project ?timeouts ~display_name
    ~android_settings ~ios_settings ~testing_options ~waf_settings
    ~web_settings __resource_id =
  let __resource_type = "google_recaptcha_enterprise_key" in
  let __resource =
    google_recaptcha_enterprise_key ?id ?labels ?project ?timeouts
      ~display_name ~android_settings ~ios_settings ~testing_options
      ~waf_settings ~web_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_recaptcha_enterprise_key __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes
