(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_application_insights_standard_web_test__request__header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__request__header *)

type azurerm_application_insights_standard_web_test__request = {
  body : string prop option; [@option]  (** body *)
  follow_redirects_enabled : bool prop option; [@option]
      (** follow_redirects_enabled *)
  http_verb : string prop option; [@option]  (** http_verb *)
  parse_dependent_requests_enabled : bool prop option; [@option]
      (** parse_dependent_requests_enabled *)
  url : string prop;  (** url *)
  header :
    azurerm_application_insights_standard_web_test__request__header
    list;
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__request *)

type azurerm_application_insights_standard_web_test__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__timeouts *)

type azurerm_application_insights_standard_web_test__validation_rules__content = {
  content_match : string prop;  (** content_match *)
  ignore_case : bool prop option; [@option]  (** ignore_case *)
  pass_if_text_found : bool prop option; [@option]
      (** pass_if_text_found *)
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__validation_rules__content *)

type azurerm_application_insights_standard_web_test__validation_rules = {
  expected_status_code : float prop option; [@option]
      (** expected_status_code *)
  ssl_cert_remaining_lifetime : float prop option; [@option]
      (** ssl_cert_remaining_lifetime *)
  ssl_check_enabled : bool prop option; [@option]
      (** ssl_check_enabled *)
  content :
    azurerm_application_insights_standard_web_test__validation_rules__content
    list;
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test__validation_rules *)

type azurerm_application_insights_standard_web_test = {
  application_insights_id : string prop;
      (** application_insights_id *)
  description : string prop option; [@option]  (** description *)
  enabled : bool prop option; [@option]  (** enabled *)
  frequency : float prop option; [@option]  (** frequency *)
  geo_locations : string prop list;  (** geo_locations *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  retry_enabled : bool prop option; [@option]  (** retry_enabled *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeout : float prop option; [@option]  (** timeout *)
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
    ?enabled ?frequency ?id ?retry_enabled ?tags ?timeout ?timeouts
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
      id;
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
