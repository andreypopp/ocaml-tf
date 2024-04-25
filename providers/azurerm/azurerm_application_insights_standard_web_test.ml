(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type request__header = { name : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : request__header) -> ()

let yojson_of_request__header =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : request__header -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request__header

[@@@deriving.end]

type request = {
  body : string prop option; [@option]
  follow_redirects_enabled : bool prop option; [@option]
  http_verb : string prop option; [@option]
  parse_dependent_requests_enabled : bool prop option; [@option]
  url : string prop;
  header : request__header list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : request) -> ()

let yojson_of_request =
  (function
   | {
       body = v_body;
       follow_redirects_enabled = v_follow_redirects_enabled;
       http_verb = v_http_verb;
       parse_dependent_requests_enabled =
         v_parse_dependent_requests_enabled;
       url = v_url;
       header = v_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_request__header v_header
         in
         ("header", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         match v_parse_dependent_requests_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "parse_dependent_requests_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_http_verb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "http_verb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_follow_redirects_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "follow_redirects_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_body with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "body", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : request -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_request

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type validation_rules__content = {
  content_match : string prop;
  ignore_case : bool prop option; [@option]
  pass_if_text_found : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_rules__content) -> ()

let yojson_of_validation_rules__content =
  (function
   | {
       content_match = v_content_match;
       ignore_case = v_ignore_case;
       pass_if_text_found = v_pass_if_text_found;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_pass_if_text_found with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "pass_if_text_found", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_case with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ignore_case", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content_match in
         ("content_match", arg) :: bnds
       in
       `Assoc bnds
    : validation_rules__content -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_rules__content

[@@@deriving.end]

type validation_rules = {
  expected_status_code : float prop option; [@option]
  ssl_cert_remaining_lifetime : float prop option; [@option]
  ssl_check_enabled : bool prop option; [@option]
  content : validation_rules__content list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : validation_rules) -> ()

let yojson_of_validation_rules =
  (function
   | {
       expected_status_code = v_expected_status_code;
       ssl_cert_remaining_lifetime = v_ssl_cert_remaining_lifetime;
       ssl_check_enabled = v_ssl_check_enabled;
       content = v_content;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_validation_rules__content
             v_content
         in
         ("content", arg) :: bnds
       in
       let bnds =
         match v_ssl_check_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ssl_check_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ssl_cert_remaining_lifetime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ssl_cert_remaining_lifetime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expected_status_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "expected_status_code", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : validation_rules -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_validation_rules

[@@@deriving.end]

type azurerm_application_insights_standard_web_test = {
  application_insights_id : string prop;
  description : string prop option; [@option]
  enabled : bool prop option; [@option]
  frequency : float prop option; [@option]
  geo_locations : string prop list;
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retry_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  timeout : float prop option; [@option]
  request : request list;
  timeouts : timeouts option;
  validation_rules : validation_rules list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_application_insights_standard_web_test) -> ()

let yojson_of_azurerm_application_insights_standard_web_test =
  (function
   | {
       application_insights_id = v_application_insights_id;
       description = v_description;
       enabled = v_enabled;
       frequency = v_frequency;
       geo_locations = v_geo_locations;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       retry_enabled = v_retry_enabled;
       tags = v_tags;
       timeout = v_timeout;
       request = v_request;
       timeouts = v_timeouts;
       validation_rules = v_validation_rules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_validation_rules
             v_validation_rules
         in
         ("validation_rules", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_request v_request in
         ("request", arg) :: bnds
       in
       let bnds =
         match v_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retry_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "retry_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_geo_locations
         in
         ("geo_locations", arg) :: bnds
       in
       let bnds =
         match v_frequency with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "frequency", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
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
           yojson_of_prop yojson_of_string v_application_insights_id
         in
         ("application_insights_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_application_insights_standard_web_test ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_application_insights_standard_web_test

[@@@deriving.end]

let request__header ~name ~value () : request__header =
  { name; value }

let request ?body ?follow_redirects_enabled ?http_verb
    ?parse_dependent_requests_enabled ?(header = []) ~url () :
    request =
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
    ?ssl_cert_remaining_lifetime ?ssl_check_enabled ?(content = [])
    () : validation_rules =
  {
    expected_status_code;
    ssl_cert_remaining_lifetime;
    ssl_check_enabled;
    content;
  }

let azurerm_application_insights_standard_web_test ?description
    ?enabled ?frequency ?id ?retry_enabled ?tags ?timeout ?timeouts
    ?(validation_rules = []) ~application_insights_id ~geo_locations
    ~location ~name ~resource_group_name ~request () :
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

let make ?description ?enabled ?frequency ?id ?retry_enabled ?tags
    ?timeout ?timeouts ?(validation_rules = [])
    ~application_insights_id ~geo_locations ~location ~name
    ~resource_group_name ~request __id =
  let __type = "azurerm_application_insights_standard_web_test" in
  let __attrs =
    ({
       application_insights_id =
         Prop.computed __type __id "application_insights_id";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       frequency = Prop.computed __type __id "frequency";
       geo_locations = Prop.computed __type __id "geo_locations";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       retry_enabled = Prop.computed __type __id "retry_enabled";
       synthetic_monitor_id =
         Prop.computed __type __id "synthetic_monitor_id";
       tags = Prop.computed __type __id "tags";
       timeout = Prop.computed __type __id "timeout";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_application_insights_standard_web_test
        (azurerm_application_insights_standard_web_test ?description
           ?enabled ?frequency ?id ?retry_enabled ?tags ?timeout
           ?timeouts ~validation_rules ~application_insights_id
           ~geo_locations ~location ~name ~resource_group_name
           ~request ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?enabled ?frequency ?id
    ?retry_enabled ?tags ?timeout ?timeouts ?(validation_rules = [])
    ~application_insights_id ~geo_locations ~location ~name
    ~resource_group_name ~request __id =
  let (r : _ Tf_core.resource) =
    make ?description ?enabled ?frequency ?id ?retry_enabled ?tags
      ?timeout ?timeouts ~validation_rules ~application_insights_id
      ~geo_locations ~location ~name ~resource_group_name ~request
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
