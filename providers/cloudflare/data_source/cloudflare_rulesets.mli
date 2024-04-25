(** Use this datasource to lookup Rulesets in an account or zone.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type rulesets__rules__ratelimit = {
  characteristics : string prop list;  (** characteristics *)
  counting_expression : string prop;  (** counting_expression *)
  mitigation_timeout : float prop;  (** mitigation_timeout *)
  period : float prop;  (** period *)
  requests_per_period : float prop;  (** requests_per_period *)
  requests_to_origin : bool prop;  (** requests_to_origin *)
  score_per_period : float prop;  (** score_per_period *)
  score_response_header_name : string prop;
      (** score_response_header_name *)
}

type rulesets__rules__logging = {
  enabled : bool prop;  (** enabled *)
  status : string prop;  (** status *)
}

type rulesets__rules__exposed_credential_check = {
  password_expression : string prop;  (** password_expression *)
  username_expression : string prop;  (** username_expression *)
}

type rulesets__rules__action_parameters__uri__query = {
  expression : string prop;  (** expression *)
  value : string prop;  (** value *)
}

type rulesets__rules__action_parameters__uri__path = {
  expression : string prop;  (** expression *)
  value : string prop;  (** value *)
}

type rulesets__rules__action_parameters__uri = {
  origin : bool prop;  (** origin *)
  path : rulesets__rules__action_parameters__uri__path list;
      (** path *)
  query : rulesets__rules__action_parameters__uri__query list;
      (** query *)
}

type rulesets__rules__action_parameters__sni = {
  value : string prop;  (** value *)
}

type rulesets__rules__action_parameters__serve_stale = {
  disable_stale_while_updating : bool prop;
      (** disable_stale_while_updating *)
}

type rulesets__rules__action_parameters__response = {
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  status_code : float prop;  (** status_code *)
}

type rulesets__rules__action_parameters__overrides__rules = {
  action : string prop;  (** action *)
  enabled : bool prop;  (** enabled *)
  id : string prop;  (** id *)
  score_threshold : float prop;  (** score_threshold *)
  sensitivity_level : string prop;  (** sensitivity_level *)
  status : string prop;  (** status *)
}

type rulesets__rules__action_parameters__overrides__categories = {
  action : string prop;  (** action *)
  category : string prop;  (** category *)
  enabled : bool prop;  (** enabled *)
  status : string prop;  (** status *)
}

type rulesets__rules__action_parameters__overrides = {
  action : string prop;  (** action *)
  categories :
    rulesets__rules__action_parameters__overrides__categories list;
      (** categories *)
  enabled : bool prop;  (** enabled *)
  rules : rulesets__rules__action_parameters__overrides__rules list;
      (** rules *)
  sensitivity_level : string prop;  (** sensitivity_level *)
  status : string prop;  (** status *)
}

type rulesets__rules__action_parameters__origin = {
  host : string prop;  (** host *)
  port : float prop;  (** port *)
}

type rulesets__rules__action_parameters__matched_data = {
  public_key : string prop;  (** public_key *)
}

type rulesets__rules__action_parameters__headers = {
  expression : string prop;  (** expression *)
  name : string prop;  (** name *)
  operation : string prop;  (** operation *)
  value : string prop;  (** value *)
}

type rulesets__rules__action_parameters__from_value__target_url = {
  expression : string prop;  (** expression *)
  value : string prop;  (** value *)
}

type rulesets__rules__action_parameters__from_value = {
  preserve_query_string : bool prop;  (** preserve_query_string *)
  status_code : float prop;  (** status_code *)
  target_url :
    rulesets__rules__action_parameters__from_value__target_url list;
      (** target_url *)
}

type rulesets__rules__action_parameters__from_list = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}

type rulesets__rules__action_parameters__edge_ttl__status_code_ttl__status_code_range = {
  from : float prop;  (** from *)
  to_ : float prop; [@key "to"]  (** to *)
}

type rulesets__rules__action_parameters__edge_ttl__status_code_ttl = {
  status_code : float prop;  (** status_code *)
  status_code_range :
    rulesets__rules__action_parameters__edge_ttl__status_code_ttl__status_code_range
    list;
      (** status_code_range *)
  value : float prop;  (** value *)
}

type rulesets__rules__action_parameters__edge_ttl = {
  default : float prop;  (** default *)
  mode : string prop;  (** mode *)
  status_code_ttl :
    rulesets__rules__action_parameters__edge_ttl__status_code_ttl
    list;
      (** status_code_ttl *)
}

type rulesets__rules__action_parameters__cache_key__custom_key__user = {
  device_type : bool prop;  (** device_type *)
  geo : bool prop;  (** geo *)
  lang : bool prop;  (** lang *)
}

type rulesets__rules__action_parameters__cache_key__custom_key__query_string = {
  exclude : string prop list;  (** exclude *)
  include_ : string prop list; [@key "include"]  (** include *)
}

type rulesets__rules__action_parameters__cache_key__custom_key__host = {
  resolved : bool prop;  (** resolved *)
}

type rulesets__rules__action_parameters__cache_key__custom_key__header = {
  check_presence : string prop list;  (** check_presence *)
  exclude_origin : bool prop;  (** exclude_origin *)
  include_ : string prop list; [@key "include"]  (** include *)
}

type rulesets__rules__action_parameters__cache_key__custom_key__cookie = {
  check_presence : string prop list;  (** check_presence *)
  include_ : string prop list; [@key "include"]  (** include *)
}

type rulesets__rules__action_parameters__cache_key__custom_key = {
  cookie :
    rulesets__rules__action_parameters__cache_key__custom_key__cookie
    list;
      (** cookie *)
  header :
    rulesets__rules__action_parameters__cache_key__custom_key__header
    list;
      (** header *)
  host :
    rulesets__rules__action_parameters__cache_key__custom_key__host
    list;
      (** host *)
  query_string :
    rulesets__rules__action_parameters__cache_key__custom_key__query_string
    list;
      (** query_string *)
  user :
    rulesets__rules__action_parameters__cache_key__custom_key__user
    list;
      (** user *)
}

type rulesets__rules__action_parameters__cache_key = {
  cache_by_device_type : bool prop;  (** cache_by_device_type *)
  cache_deception_armor : bool prop;  (** cache_deception_armor *)
  custom_key :
    rulesets__rules__action_parameters__cache_key__custom_key list;
      (** custom_key *)
  ignore_query_strings_order : bool prop;
      (** ignore_query_strings_order *)
}

type rulesets__rules__action_parameters__browser_ttl = {
  default : float prop;  (** default *)
  mode : string prop;  (** mode *)
}

type rulesets__rules__action_parameters__autominify = {
  css : bool prop;  (** css *)
  html : bool prop;  (** html *)
  js : bool prop;  (** js *)
}

type rulesets__rules__action_parameters = {
  additional_cacheable_ports : float prop list;
      (** additional_cacheable_ports *)
  automatic_https_rewrites : bool prop;
      (** automatic_https_rewrites *)
  autominify : rulesets__rules__action_parameters__autominify list;
      (** autominify *)
  bic : bool prop;  (** bic *)
  browser_ttl : rulesets__rules__action_parameters__browser_ttl list;
      (** browser_ttl *)
  cache : bool prop;  (** cache *)
  cache_key : rulesets__rules__action_parameters__cache_key list;
      (** cache_key *)
  content : string prop;  (** content *)
  content_type : string prop;  (** content_type *)
  cookie_fields : string prop list;  (** cookie_fields *)
  disable_apps : bool prop;  (** disable_apps *)
  disable_railgun : bool prop;  (** disable_railgun *)
  disable_zaraz : bool prop;  (** disable_zaraz *)
  edge_ttl : rulesets__rules__action_parameters__edge_ttl list;
      (** edge_ttl *)
  email_obfuscation : bool prop;  (** email_obfuscation *)
  from_list : rulesets__rules__action_parameters__from_list list;
      (** from_list *)
  from_value : rulesets__rules__action_parameters__from_value list;
      (** from_value *)
  headers : rulesets__rules__action_parameters__headers list;
      (** headers *)
  host_header : string prop;  (** host_header *)
  hotlink_protection : bool prop;  (** hotlink_protection *)
  id : string prop;  (** id *)
  increment : float prop;  (** increment *)
  matched_data :
    rulesets__rules__action_parameters__matched_data list;
      (** matched_data *)
  mirage : bool prop;  (** mirage *)
  opportunistic_encryption : bool prop;
      (** opportunistic_encryption *)
  origin : rulesets__rules__action_parameters__origin list;
      (** origin *)
  origin_cache_control : bool prop;  (** origin_cache_control *)
  origin_error_page_passthru : bool prop;
      (** origin_error_page_passthru *)
  overrides : rulesets__rules__action_parameters__overrides list;
      (** overrides *)
  phases : string prop list;  (** phases *)
  polish : string prop;  (** polish *)
  products : string prop list;  (** products *)
  read_timeout : float prop;  (** read_timeout *)
  request_fields : string prop list;  (** request_fields *)
  respect_strong_etags : bool prop;  (** respect_strong_etags *)
  response : rulesets__rules__action_parameters__response list;
      (** response *)
  response_fields : string prop list;  (** response_fields *)
  rocket_loader : bool prop;  (** rocket_loader *)
  rules : (string * string prop) list;  (** rules *)
  ruleset : string prop;  (** ruleset *)
  rulesets : string prop list;  (** rulesets *)
  security_level : string prop;  (** security_level *)
  serve_stale : rulesets__rules__action_parameters__serve_stale list;
      (** serve_stale *)
  server_side_excludes : bool prop;  (** server_side_excludes *)
  sni : rulesets__rules__action_parameters__sni list;  (** sni *)
  ssl : string prop;  (** ssl *)
  status_code : float prop;  (** status_code *)
  sxg : bool prop;  (** sxg *)
  uri : rulesets__rules__action_parameters__uri list;  (** uri *)
  version : string prop;  (** version *)
}

type rulesets__rules = {
  action : string prop;  (** action *)
  action_parameters : rulesets__rules__action_parameters list;
      (** action_parameters *)
  description : string prop;  (** description *)
  enabled : bool prop;  (** enabled *)
  exposed_credential_check :
    rulesets__rules__exposed_credential_check list;
      (** exposed_credential_check *)
  expression : string prop;  (** expression *)
  id : string prop;  (** id *)
  last_updated : string prop;  (** last_updated *)
  logging : rulesets__rules__logging list;  (** logging *)
  ratelimit : rulesets__rules__ratelimit list;  (** ratelimit *)
  ref : string prop;  (** ref *)
  version : string prop;  (** version *)
}

type rulesets = {
  description : string prop;  (** description *)
  id : string prop;  (** id *)
  kind : string prop;  (** kind *)
  name : string prop;  (** name *)
  phase : string prop;  (** phase *)
  rules : rulesets__rules list;  (** rules *)
  version : string prop;  (** version *)
}

type filter

val filter :
  ?id:string prop ->
  ?kind:string prop ->
  ?name:string prop ->
  ?phase:string prop ->
  ?version:string prop ->
  unit ->
  filter

type cloudflare_rulesets

val cloudflare_rulesets :
  ?account_id:string prop ->
  ?id:string prop ->
  ?include_rules:bool prop ->
  ?zone_id:string prop ->
  ?filter:filter list ->
  unit ->
  cloudflare_rulesets

val yojson_of_cloudflare_rulesets : cloudflare_rulesets -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  id : string prop;
  include_rules : bool prop;
  rulesets : rulesets list prop;
  zone_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?account_id:string prop ->
  ?id:string prop ->
  ?include_rules:bool prop ->
  ?zone_id:string prop ->
  ?filter:filter list ->
  string ->
  t

val make :
  ?account_id:string prop ->
  ?id:string prop ->
  ?include_rules:bool prop ->
  ?zone_id:string prop ->
  ?filter:filter list ->
  string ->
  t Tf_core.resource
