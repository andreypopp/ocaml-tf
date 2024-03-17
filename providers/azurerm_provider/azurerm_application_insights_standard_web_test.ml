(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_standard_web_test__request__header = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__request__header *)

type azurerm_application_insights_standard_web_test__request = {
  body : string option; [@option]  (** body *)
  follow_redirects_enabled : bool option; [@option]
      (** follow_redirects_enabled *)
  http_verb : string option; [@option]  (** http_verb *)
  parse_dependent_requests_enabled : bool option; [@option]
      (** parse_dependent_requests_enabled *)
  url : string;  (** url *)
  header :
    azurerm_application_insights_standard_web_test__request__header
    list;
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__request *)

type azurerm_application_insights_standard_web_test__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__timeouts *)

type azurerm_application_insights_standard_web_test__validation_rules__content = {
  content_match : string;  (** content_match *)
  ignore_case : bool option; [@option]  (** ignore_case *)
  pass_if_text_found : bool option; [@option]
      (** pass_if_text_found *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__validation_rules__content *)

type azurerm_application_insights_standard_web_test__validation_rules = {
  expected_status_code : float option; [@option]
      (** expected_status_code *)
  ssl_cert_remaining_lifetime : float option; [@option]
      (** ssl_cert_remaining_lifetime *)
  ssl_check_enabled : bool option; [@option]
      (** ssl_check_enabled *)
  content :
    azurerm_application_insights_standard_web_test__validation_rules__content
    list;
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__validation_rules *)

type azurerm_application_insights_standard_web_test = {
  application_insights_id : string;  (** application_insights_id *)
  description : string option; [@option]  (** description *)
  enabled : bool option; [@option]  (** enabled *)
  frequency : float option; [@option]  (** frequency *)
  geo_locations : string list;  (** geo_locations *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  retry_enabled : bool option; [@option]  (** retry_enabled *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeout : float option; [@option]  (** timeout *)
  request :
    azurerm_application_insights_standard_web_test__request list;
  timeouts :
    azurerm_application_insights_standard_web_test__timeouts option;
  validation_rules :
    azurerm_application_insights_standard_web_test__validation_rules
    list;
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test *)

let azurerm_application_insights_standard_web_test ?description
    ?enabled ?frequency ?retry_enabled ?tags ?timeout ?timeouts
    ~application_insights_id ~geo_locations ~location ~name
    ~resource_group_name ~request ~validation_rules __resource_id =
  let __resource_type =
    "azurerm_application_insights_standard_web_test"
  in
  let __resource =
    {
      application_insights_id;
      description;
      enabled;
      frequency;
      geo_locations;
      location;
      name;
      resource_group_name;
      retry_enabled;
      tags;
      timeout;
      request;
      timeouts;
      validation_rules;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_standard_web_test
       __resource);
  ()
