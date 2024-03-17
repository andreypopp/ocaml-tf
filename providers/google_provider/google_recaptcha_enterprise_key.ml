(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_recaptcha_enterprise_key__android_settings = {
  allow_all_package_names : bool option; [@option]
      (** If set to true, it means allowed_package_names will not be enforced. *)
  allowed_package_names : string list option; [@option]
      (** Android package names of apps allowed to use the key. Example: 'com.companyname.appname' *)
}
[@@deriving yojson_of]
(** Settings for keys that can be used by Android apps. *)

type google_recaptcha_enterprise_key__ios_settings = {
  allow_all_bundle_ids : bool option; [@option]
      (** If set to true, it means allowed_bundle_ids will not be enforced. *)
  allowed_bundle_ids : string list option; [@option]
      (** iOS bundle ids of apps allowed to use the key. Example: 'com.companyname.productname.appname' *)
}
[@@deriving yojson_of]
(** Settings for keys that can be used by iOS apps. *)

type google_recaptcha_enterprise_key__testing_options = {
  testing_challenge : string option; [@option]
      (** For challenge-based keys only (CHECKBOX, INVISIBLE), all challenge requests for this site will return nocaptcha if NOCAPTCHA, or an unsolvable challenge if UNSOLVABLE_CHALLENGE. Possible values: TESTING_CHALLENGE_UNSPECIFIED, NOCAPTCHA, UNSOLVABLE_CHALLENGE *)
  testing_score : float option; [@option]
      (** All assessments for this Key will return this score. Must be between 0 (likely not legitimate) and 1 (likely legitimate) inclusive. *)
}
[@@deriving yojson_of]
(** Options for user acceptance testing. *)

type google_recaptcha_enterprise_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_recaptcha_enterprise_key__timeouts *)

type google_recaptcha_enterprise_key__waf_settings = {
  waf_feature : string;
      (** Supported WAF features. For more information, see https://cloud.google.com/recaptcha-enterprise/docs/usecase#comparison_of_features. Possible values: CHALLENGE_PAGE, SESSION_TOKEN, ACTION_TOKEN, EXPRESS *)
  waf_service : string;
      (** The WAF service that uses this key. Possible values: CA, FASTLY *)
}
[@@deriving yojson_of]
(** Settings specific to keys that can be used for WAF (Web Application Firewall). *)

type google_recaptcha_enterprise_key__web_settings = {
  allow_all_domains : bool option; [@option]
      (** If set to true, it means allowed_domains will not be enforced. *)
  allow_amp_traffic : bool option; [@option]
      (** If set to true, the key can be used on AMP (Accelerated Mobile Pages) websites. This is supported only for the SCORE integration type. *)
  allowed_domains : string list option; [@option]
      (** Domains or subdomains of websites allowed to use the key. All subdomains of an allowed domain are automatically allowed. A valid domain requires a host and must not include any path, port, query or fragment. Examples: 'example.com' or 'subdomain.example.com' *)
  challenge_security_preference : string option; [@option]
      (** Settings for the frequency and difficulty at which this key triggers captcha challenges. This should only be specified for IntegrationTypes CHECKBOX and INVISIBLE. Possible values: CHALLENGE_SECURITY_PREFERENCE_UNSPECIFIED, USABILITY, BALANCE, SECURITY *)
  integration_type : string;
      (** Required. Describes how this key is integrated with the website. Possible values: SCORE, CHECKBOX, INVISIBLE *)
}
[@@deriving yojson_of]
(** Settings for keys that can be used by websites. *)

type google_recaptcha_enterprise_key = {
  display_name : string;
      (** Human-readable display name of this key. Modifiable by user. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** See [Creating and managing labels](https://cloud.google.com/recaptcha-enterprise/docs/labels).

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. *)
  project : string option; [@option]
      (** The project for the resource *)
  android_settings :
    google_recaptcha_enterprise_key__android_settings list;
  ios_settings : google_recaptcha_enterprise_key__ios_settings list;
  testing_options :
    google_recaptcha_enterprise_key__testing_options list;
  timeouts : google_recaptcha_enterprise_key__timeouts option;
  waf_settings : google_recaptcha_enterprise_key__waf_settings list;
  web_settings : google_recaptcha_enterprise_key__web_settings list;
}
[@@deriving yojson_of]
(** google_recaptcha_enterprise_key *)

let google_recaptcha_enterprise_key ?id ?labels ?project ?timeouts
    ~display_name ~android_settings ~ios_settings ~testing_options
    ~waf_settings ~web_settings __resource_id =
  let __resource_type = "google_recaptcha_enterprise_key" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_recaptcha_enterprise_key __resource);
  ()
