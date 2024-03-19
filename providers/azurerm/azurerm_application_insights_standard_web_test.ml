(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type request__header = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** request__header *)

type request = {
  body : string prop option; [@option]  (** body *)
  follow_redirects_enabled : bool prop option; [@option]
      (** follow_redirects_enabled *)
  http_verb : string prop option; [@option]  (** http_verb *)
  parse_dependent_requests_enabled : bool prop option; [@option]
      (** parse_dependent_requests_enabled *)
  url : string prop;  (** url *)
  header : request__header list;
}
[@@deriving yojson_of]
(** request *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type validation_rules__content = {
  content_match : string prop;  (** content_match *)
  ignore_case : bool prop option; [@option]  (** ignore_case *)
  pass_if_text_found : bool prop option; [@option]
      (** pass_if_text_found *)
}
[@@deriving yojson_of]
(** validation_rules__content *)

type validation_rules = {
  expected_status_code : float prop option; [@option]
      (** expected_status_code *)
  ssl_cert_remaining_lifetime : float prop option; [@option]
      (** ssl_cert_remaining_lifetime *)
  ssl_check_enabled : bool prop option; [@option]
      (** ssl_check_enabled *)
  content : validation_rules__content list;
}
[@@deriving yojson_of]
(** validation_rules *)

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
  request : request list;
  timeouts : timeouts option;
  validation_rules : validation_rules list;
}
[@@deriving yojson_of]
(** azurerm_application_insights_standard_web_test *)

let request__header ~name ~value () : request__header =
  { name; value }

let request ?body ?follow_redirects_enabled ?http_verb
    ?parse_dependent_requests_enabled ~url ~header () : request =
  {
    body;
    follow_redirects_enabled;
    http_verb;
    parse_dependent_requests_enabled;
    url;
    header;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let validation_rules__content ?ignore_case ?pass_if_text_found
    ~content_match () : validation_rules__content =
  { content_match; ignore_case; pass_if_text_found }

let validation_rules ?expected_status_code
    ?ssl_cert_remaining_lifetime ?ssl_check_enabled ~content () :
    validation_rules =
  {
    expected_status_code;
    ssl_cert_remaining_lifetime;
    ssl_check_enabled;
    content;
  }

let azurerm_application_insights_standard_web_test ?description
    ?enabled ?frequency ?id ?retry_enabled ?tags ?timeout ?timeouts
    ~application_insights_id ~geo_locations ~location ~name
    ~resource_group_name ~request ~validation_rules () :
    azurerm_application_insights_standard_web_test =
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

type t = {
  application_insights_id : string prop;
  description : string prop;
  enabled : bool prop;
  frequency : float prop;
  geo_locations : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retry_enabled : bool prop;
  synthetic_monitor_id : string prop;
  tags : (string * string) list prop;
  timeout : float prop;
}

let register ?tf_module ?description ?enabled ?frequency ?id
    ?retry_enabled ?tags ?timeout ?timeouts ~application_insights_id
    ~geo_locations ~location ~name ~resource_group_name ~request
    ~validation_rules __resource_id =
  let __resource_type =
    "azurerm_application_insights_standard_web_test"
  in
  let __resource =
    azurerm_application_insights_standard_web_test ?description
      ?enabled ?frequency ?id ?retry_enabled ?tags ?timeout ?timeouts
      ~application_insights_id ~geo_locations ~location ~name
      ~resource_group_name ~request ~validation_rules ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_application_insights_standard_web_test
       __resource);
  let __resource_attributes =
    ({
       application_insights_id =
         Prop.computed __resource_type __resource_id
           "application_insights_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       geo_locations =
         Prop.computed __resource_type __resource_id "geo_locations";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       retry_enabled =
         Prop.computed __resource_type __resource_id "retry_enabled";
       synthetic_monitor_id =
         Prop.computed __resource_type __resource_id
           "synthetic_monitor_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       timeout =
         Prop.computed __resource_type __resource_id "timeout";
     }
      : t)
  in
  __resource_attributes
