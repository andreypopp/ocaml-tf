(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type default_route_action__cors_policy

val default_route_action__cors_policy :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?allow_origin_regexes:string prop list ->
  ?allow_origins:string prop list ->
  ?disabled:bool prop ->
  ?expose_headers:string prop list ->
  ?max_age:float prop ->
  unit ->
  default_route_action__cors_policy

type default_route_action__fault_injection_policy__abort

val default_route_action__fault_injection_policy__abort :
  ?http_status:float prop ->
  ?percentage:float prop ->
  unit ->
  default_route_action__fault_injection_policy__abort

type default_route_action__fault_injection_policy__delay__fixed_delay

val default_route_action__fault_injection_policy__delay__fixed_delay :
  ?nanos:float prop ->
  ?seconds:string prop ->
  unit ->
  default_route_action__fault_injection_policy__delay__fixed_delay

type default_route_action__fault_injection_policy__delay

val default_route_action__fault_injection_policy__delay :
  ?percentage:float prop ->
  ?fixed_delay:
    default_route_action__fault_injection_policy__delay__fixed_delay
    list ->
  unit ->
  default_route_action__fault_injection_policy__delay

type default_route_action__fault_injection_policy

val default_route_action__fault_injection_policy :
  ?abort:default_route_action__fault_injection_policy__abort list ->
  ?delay:default_route_action__fault_injection_policy__delay list ->
  unit ->
  default_route_action__fault_injection_policy

type default_route_action__request_mirror_policy

val default_route_action__request_mirror_policy :
  backend_service:string prop ->
  unit ->
  default_route_action__request_mirror_policy

type default_route_action__retry_policy__per_try_timeout

val default_route_action__retry_policy__per_try_timeout :
  ?nanos:float prop ->
  ?seconds:string prop ->
  unit ->
  default_route_action__retry_policy__per_try_timeout

type default_route_action__retry_policy

val default_route_action__retry_policy :
  ?num_retries:float prop ->
  ?retry_conditions:string prop list ->
  ?per_try_timeout:
    default_route_action__retry_policy__per_try_timeout list ->
  unit ->
  default_route_action__retry_policy

type default_route_action__timeout

val default_route_action__timeout :
  ?nanos:float prop ->
  ?seconds:string prop ->
  unit ->
  default_route_action__timeout

type default_route_action__url_rewrite

val default_route_action__url_rewrite :
  ?host_rewrite:string prop ->
  ?path_prefix_rewrite:string prop ->
  unit ->
  default_route_action__url_rewrite

type default_route_action__weighted_backend_services__header_action__request_headers_to_add

val default_route_action__weighted_backend_services__header_action__request_headers_to_add :
  ?header_name:string prop ->
  ?header_value:string prop ->
  ?replace:bool prop ->
  unit ->
  default_route_action__weighted_backend_services__header_action__request_headers_to_add

type default_route_action__weighted_backend_services__header_action__response_headers_to_add

val default_route_action__weighted_backend_services__header_action__response_headers_to_add :
  ?header_name:string prop ->
  ?header_value:string prop ->
  ?replace:bool prop ->
  unit ->
  default_route_action__weighted_backend_services__header_action__response_headers_to_add

type default_route_action__weighted_backend_services__header_action

val default_route_action__weighted_backend_services__header_action :
  ?request_headers_to_remove:string prop list ->
  ?response_headers_to_remove:string prop list ->
  ?request_headers_to_add:
    default_route_action__weighted_backend_services__header_action__request_headers_to_add
    list ->
  ?response_headers_to_add:
    default_route_action__weighted_backend_services__header_action__response_headers_to_add
    list ->
  unit ->
  default_route_action__weighted_backend_services__header_action

type default_route_action__weighted_backend_services

val default_route_action__weighted_backend_services :
  ?backend_service:string prop ->
  ?weight:float prop ->
  ?header_action:
    default_route_action__weighted_backend_services__header_action
    list ->
  unit ->
  default_route_action__weighted_backend_services

type default_route_action

val default_route_action :
  ?cors_policy:default_route_action__cors_policy list ->
  ?fault_injection_policy:
    default_route_action__fault_injection_policy list ->
  ?request_mirror_policy:
    default_route_action__request_mirror_policy list ->
  ?retry_policy:default_route_action__retry_policy list ->
  ?timeout:default_route_action__timeout list ->
  ?url_rewrite:default_route_action__url_rewrite list ->
  ?weighted_backend_services:
    default_route_action__weighted_backend_services list ->
  unit ->
  default_route_action

type default_url_redirect

val default_url_redirect :
  ?host_redirect:string prop ->
  ?https_redirect:bool prop ->
  ?path_redirect:string prop ->
  ?prefix_redirect:string prop ->
  ?redirect_response_code:string prop ->
  strip_query:bool prop ->
  unit ->
  default_url_redirect

type header_action__request_headers_to_add

val header_action__request_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  header_action__request_headers_to_add

type header_action__response_headers_to_add

val header_action__response_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  header_action__response_headers_to_add

type header_action

val header_action :
  ?request_headers_to_remove:string prop list ->
  ?response_headers_to_remove:string prop list ->
  ?request_headers_to_add:header_action__request_headers_to_add list ->
  ?response_headers_to_add:
    header_action__response_headers_to_add list ->
  unit ->
  header_action

type host_rule

val host_rule :
  ?description:string prop ->
  hosts:string prop list ->
  path_matcher:string prop ->
  unit ->
  host_rule

type path_matcher__default_route_action__cors_policy

val path_matcher__default_route_action__cors_policy :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?allow_origin_regexes:string prop list ->
  ?allow_origins:string prop list ->
  ?disabled:bool prop ->
  ?expose_headers:string prop list ->
  ?max_age:float prop ->
  unit ->
  path_matcher__default_route_action__cors_policy

type path_matcher__default_route_action__fault_injection_policy__abort

val path_matcher__default_route_action__fault_injection_policy__abort :
  ?http_status:float prop ->
  ?percentage:float prop ->
  unit ->
  path_matcher__default_route_action__fault_injection_policy__abort

type path_matcher__default_route_action__fault_injection_policy__delay__fixed_delay

val path_matcher__default_route_action__fault_injection_policy__delay__fixed_delay :
  ?nanos:float prop ->
  ?seconds:string prop ->
  unit ->
  path_matcher__default_route_action__fault_injection_policy__delay__fixed_delay

type path_matcher__default_route_action__fault_injection_policy__delay

val path_matcher__default_route_action__fault_injection_policy__delay :
  ?percentage:float prop ->
  ?fixed_delay:
    path_matcher__default_route_action__fault_injection_policy__delay__fixed_delay
    list ->
  unit ->
  path_matcher__default_route_action__fault_injection_policy__delay

type path_matcher__default_route_action__fault_injection_policy

val path_matcher__default_route_action__fault_injection_policy :
  ?abort:
    path_matcher__default_route_action__fault_injection_policy__abort
    list ->
  ?delay:
    path_matcher__default_route_action__fault_injection_policy__delay
    list ->
  unit ->
  path_matcher__default_route_action__fault_injection_policy

type path_matcher__default_route_action__request_mirror_policy

val path_matcher__default_route_action__request_mirror_policy :
  backend_service:string prop ->
  unit ->
  path_matcher__default_route_action__request_mirror_policy

type path_matcher__default_route_action__retry_policy__per_try_timeout

val path_matcher__default_route_action__retry_policy__per_try_timeout :
  ?nanos:float prop ->
  ?seconds:string prop ->
  unit ->
  path_matcher__default_route_action__retry_policy__per_try_timeout

type path_matcher__default_route_action__retry_policy

val path_matcher__default_route_action__retry_policy :
  ?num_retries:float prop ->
  ?retry_conditions:string prop list ->
  ?per_try_timeout:
    path_matcher__default_route_action__retry_policy__per_try_timeout
    list ->
  unit ->
  path_matcher__default_route_action__retry_policy

type path_matcher__default_route_action__timeout

val path_matcher__default_route_action__timeout :
  ?nanos:float prop ->
  ?seconds:string prop ->
  unit ->
  path_matcher__default_route_action__timeout

type path_matcher__default_route_action__url_rewrite

val path_matcher__default_route_action__url_rewrite :
  ?host_rewrite:string prop ->
  ?path_prefix_rewrite:string prop ->
  unit ->
  path_matcher__default_route_action__url_rewrite

type path_matcher__default_route_action__weighted_backend_services__header_action__request_headers_to_add

val path_matcher__default_route_action__weighted_backend_services__header_action__request_headers_to_add :
  ?header_name:string prop ->
  ?header_value:string prop ->
  ?replace:bool prop ->
  unit ->
  path_matcher__default_route_action__weighted_backend_services__header_action__request_headers_to_add

type path_matcher__default_route_action__weighted_backend_services__header_action__response_headers_to_add

val path_matcher__default_route_action__weighted_backend_services__header_action__response_headers_to_add :
  ?header_name:string prop ->
  ?header_value:string prop ->
  ?replace:bool prop ->
  unit ->
  path_matcher__default_route_action__weighted_backend_services__header_action__response_headers_to_add

type path_matcher__default_route_action__weighted_backend_services__header_action

val path_matcher__default_route_action__weighted_backend_services__header_action :
  ?request_headers_to_remove:string prop list ->
  ?response_headers_to_remove:string prop list ->
  ?request_headers_to_add:
    path_matcher__default_route_action__weighted_backend_services__header_action__request_headers_to_add
    list ->
  ?response_headers_to_add:
    path_matcher__default_route_action__weighted_backend_services__header_action__response_headers_to_add
    list ->
  unit ->
  path_matcher__default_route_action__weighted_backend_services__header_action

type path_matcher__default_route_action__weighted_backend_services

val path_matcher__default_route_action__weighted_backend_services :
  ?backend_service:string prop ->
  ?weight:float prop ->
  ?header_action:
    path_matcher__default_route_action__weighted_backend_services__header_action
    list ->
  unit ->
  path_matcher__default_route_action__weighted_backend_services

type path_matcher__default_route_action

val path_matcher__default_route_action :
  ?cors_policy:path_matcher__default_route_action__cors_policy list ->
  ?fault_injection_policy:
    path_matcher__default_route_action__fault_injection_policy list ->
  ?request_mirror_policy:
    path_matcher__default_route_action__request_mirror_policy list ->
  ?retry_policy:path_matcher__default_route_action__retry_policy list ->
  ?timeout:path_matcher__default_route_action__timeout list ->
  ?url_rewrite:path_matcher__default_route_action__url_rewrite list ->
  ?weighted_backend_services:
    path_matcher__default_route_action__weighted_backend_services
    list ->
  unit ->
  path_matcher__default_route_action

type path_matcher__default_url_redirect

val path_matcher__default_url_redirect :
  ?host_redirect:string prop ->
  ?https_redirect:bool prop ->
  ?path_redirect:string prop ->
  ?prefix_redirect:string prop ->
  ?redirect_response_code:string prop ->
  strip_query:bool prop ->
  unit ->
  path_matcher__default_url_redirect

type path_matcher__header_action__request_headers_to_add

val path_matcher__header_action__request_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  path_matcher__header_action__request_headers_to_add

type path_matcher__header_action__response_headers_to_add

val path_matcher__header_action__response_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  path_matcher__header_action__response_headers_to_add

type path_matcher__header_action

val path_matcher__header_action :
  ?request_headers_to_remove:string prop list ->
  ?response_headers_to_remove:string prop list ->
  ?request_headers_to_add:
    path_matcher__header_action__request_headers_to_add list ->
  ?response_headers_to_add:
    path_matcher__header_action__response_headers_to_add list ->
  unit ->
  path_matcher__header_action

type path_matcher__path_rule__route_action__cors_policy

val path_matcher__path_rule__route_action__cors_policy :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?allow_origin_regexes:string prop list ->
  ?allow_origins:string prop list ->
  ?expose_headers:string prop list ->
  ?max_age:float prop ->
  disabled:bool prop ->
  unit ->
  path_matcher__path_rule__route_action__cors_policy

type path_matcher__path_rule__route_action__fault_injection_policy__abort

val path_matcher__path_rule__route_action__fault_injection_policy__abort :
  http_status:float prop ->
  percentage:float prop ->
  unit ->
  path_matcher__path_rule__route_action__fault_injection_policy__abort

type path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay

val path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay :
  ?nanos:float prop ->
  seconds:string prop ->
  unit ->
  path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay

type path_matcher__path_rule__route_action__fault_injection_policy__delay

val path_matcher__path_rule__route_action__fault_injection_policy__delay :
  percentage:float prop ->
  fixed_delay:
    path_matcher__path_rule__route_action__fault_injection_policy__delay__fixed_delay
    list ->
  unit ->
  path_matcher__path_rule__route_action__fault_injection_policy__delay

type path_matcher__path_rule__route_action__fault_injection_policy

val path_matcher__path_rule__route_action__fault_injection_policy :
  ?abort:
    path_matcher__path_rule__route_action__fault_injection_policy__abort
    list ->
  ?delay:
    path_matcher__path_rule__route_action__fault_injection_policy__delay
    list ->
  unit ->
  path_matcher__path_rule__route_action__fault_injection_policy

type path_matcher__path_rule__route_action__request_mirror_policy

val path_matcher__path_rule__route_action__request_mirror_policy :
  backend_service:string prop ->
  unit ->
  path_matcher__path_rule__route_action__request_mirror_policy

type path_matcher__path_rule__route_action__retry_policy__per_try_timeout

val path_matcher__path_rule__route_action__retry_policy__per_try_timeout :
  ?nanos:float prop ->
  seconds:string prop ->
  unit ->
  path_matcher__path_rule__route_action__retry_policy__per_try_timeout

type path_matcher__path_rule__route_action__retry_policy

val path_matcher__path_rule__route_action__retry_policy :
  ?num_retries:float prop ->
  ?retry_conditions:string prop list ->
  ?per_try_timeout:
    path_matcher__path_rule__route_action__retry_policy__per_try_timeout
    list ->
  unit ->
  path_matcher__path_rule__route_action__retry_policy

type path_matcher__path_rule__route_action__timeout

val path_matcher__path_rule__route_action__timeout :
  ?nanos:float prop ->
  seconds:string prop ->
  unit ->
  path_matcher__path_rule__route_action__timeout

type path_matcher__path_rule__route_action__url_rewrite

val path_matcher__path_rule__route_action__url_rewrite :
  ?host_rewrite:string prop ->
  ?path_prefix_rewrite:string prop ->
  unit ->
  path_matcher__path_rule__route_action__url_rewrite

type path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add

val path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add

type path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add

val path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add

type path_matcher__path_rule__route_action__weighted_backend_services__header_action

val path_matcher__path_rule__route_action__weighted_backend_services__header_action :
  ?request_headers_to_remove:string prop list ->
  ?response_headers_to_remove:string prop list ->
  ?request_headers_to_add:
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__request_headers_to_add
    list ->
  ?response_headers_to_add:
    path_matcher__path_rule__route_action__weighted_backend_services__header_action__response_headers_to_add
    list ->
  unit ->
  path_matcher__path_rule__route_action__weighted_backend_services__header_action

type path_matcher__path_rule__route_action__weighted_backend_services

val path_matcher__path_rule__route_action__weighted_backend_services :
  ?header_action:
    path_matcher__path_rule__route_action__weighted_backend_services__header_action
    list ->
  backend_service:string prop ->
  weight:float prop ->
  unit ->
  path_matcher__path_rule__route_action__weighted_backend_services

type path_matcher__path_rule__route_action

val path_matcher__path_rule__route_action :
  ?cors_policy:
    path_matcher__path_rule__route_action__cors_policy list ->
  ?fault_injection_policy:
    path_matcher__path_rule__route_action__fault_injection_policy
    list ->
  ?request_mirror_policy:
    path_matcher__path_rule__route_action__request_mirror_policy list ->
  ?retry_policy:
    path_matcher__path_rule__route_action__retry_policy list ->
  ?timeout:path_matcher__path_rule__route_action__timeout list ->
  ?url_rewrite:
    path_matcher__path_rule__route_action__url_rewrite list ->
  ?weighted_backend_services:
    path_matcher__path_rule__route_action__weighted_backend_services
    list ->
  unit ->
  path_matcher__path_rule__route_action

type path_matcher__path_rule__url_redirect

val path_matcher__path_rule__url_redirect :
  ?host_redirect:string prop ->
  ?https_redirect:bool prop ->
  ?path_redirect:string prop ->
  ?prefix_redirect:string prop ->
  ?redirect_response_code:string prop ->
  strip_query:bool prop ->
  unit ->
  path_matcher__path_rule__url_redirect

type path_matcher__path_rule

val path_matcher__path_rule :
  ?service:string prop ->
  ?route_action:path_matcher__path_rule__route_action list ->
  ?url_redirect:path_matcher__path_rule__url_redirect list ->
  paths:string prop list ->
  unit ->
  path_matcher__path_rule

type path_matcher__route_rules__header_action__request_headers_to_add

val path_matcher__route_rules__header_action__request_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  path_matcher__route_rules__header_action__request_headers_to_add

type path_matcher__route_rules__header_action__response_headers_to_add

val path_matcher__route_rules__header_action__response_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  path_matcher__route_rules__header_action__response_headers_to_add

type path_matcher__route_rules__header_action

val path_matcher__route_rules__header_action :
  ?request_headers_to_remove:string prop list ->
  ?response_headers_to_remove:string prop list ->
  ?request_headers_to_add:
    path_matcher__route_rules__header_action__request_headers_to_add
    list ->
  ?response_headers_to_add:
    path_matcher__route_rules__header_action__response_headers_to_add
    list ->
  unit ->
  path_matcher__route_rules__header_action

type path_matcher__route_rules__match_rules__header_matches__range_match

val path_matcher__route_rules__match_rules__header_matches__range_match :
  range_end:float prop ->
  range_start:float prop ->
  unit ->
  path_matcher__route_rules__match_rules__header_matches__range_match

type path_matcher__route_rules__match_rules__header_matches

val path_matcher__route_rules__match_rules__header_matches :
  ?exact_match:string prop ->
  ?invert_match:bool prop ->
  ?prefix_match:string prop ->
  ?present_match:bool prop ->
  ?regex_match:string prop ->
  ?suffix_match:string prop ->
  ?range_match:
    path_matcher__route_rules__match_rules__header_matches__range_match
    list ->
  header_name:string prop ->
  unit ->
  path_matcher__route_rules__match_rules__header_matches

type path_matcher__route_rules__match_rules__metadata_filters__filter_labels

val path_matcher__route_rules__match_rules__metadata_filters__filter_labels :
  name:string prop ->
  value:string prop ->
  unit ->
  path_matcher__route_rules__match_rules__metadata_filters__filter_labels

type path_matcher__route_rules__match_rules__metadata_filters

val path_matcher__route_rules__match_rules__metadata_filters :
  filter_match_criteria:string prop ->
  filter_labels:
    path_matcher__route_rules__match_rules__metadata_filters__filter_labels
    list ->
  unit ->
  path_matcher__route_rules__match_rules__metadata_filters

type path_matcher__route_rules__match_rules__query_parameter_matches

val path_matcher__route_rules__match_rules__query_parameter_matches :
  ?exact_match:string prop ->
  ?present_match:bool prop ->
  ?regex_match:string prop ->
  name:string prop ->
  unit ->
  path_matcher__route_rules__match_rules__query_parameter_matches

type path_matcher__route_rules__match_rules

val path_matcher__route_rules__match_rules :
  ?full_path_match:string prop ->
  ?ignore_case:bool prop ->
  ?path_template_match:string prop ->
  ?prefix_match:string prop ->
  ?regex_match:string prop ->
  ?header_matches:
    path_matcher__route_rules__match_rules__header_matches list ->
  ?metadata_filters:
    path_matcher__route_rules__match_rules__metadata_filters list ->
  ?query_parameter_matches:
    path_matcher__route_rules__match_rules__query_parameter_matches
    list ->
  unit ->
  path_matcher__route_rules__match_rules

type path_matcher__route_rules__route_action__cors_policy

val path_matcher__route_rules__route_action__cors_policy :
  ?allow_credentials:bool prop ->
  ?allow_headers:string prop list ->
  ?allow_methods:string prop list ->
  ?allow_origin_regexes:string prop list ->
  ?allow_origins:string prop list ->
  ?disabled:bool prop ->
  ?expose_headers:string prop list ->
  ?max_age:float prop ->
  unit ->
  path_matcher__route_rules__route_action__cors_policy

type path_matcher__route_rules__route_action__fault_injection_policy__abort

val path_matcher__route_rules__route_action__fault_injection_policy__abort :
  ?http_status:float prop ->
  ?percentage:float prop ->
  unit ->
  path_matcher__route_rules__route_action__fault_injection_policy__abort

type path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay

val path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay :
  ?nanos:float prop ->
  seconds:string prop ->
  unit ->
  path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay

type path_matcher__route_rules__route_action__fault_injection_policy__delay

val path_matcher__route_rules__route_action__fault_injection_policy__delay :
  ?percentage:float prop ->
  ?fixed_delay:
    path_matcher__route_rules__route_action__fault_injection_policy__delay__fixed_delay
    list ->
  unit ->
  path_matcher__route_rules__route_action__fault_injection_policy__delay

type path_matcher__route_rules__route_action__fault_injection_policy

val path_matcher__route_rules__route_action__fault_injection_policy :
  ?abort:
    path_matcher__route_rules__route_action__fault_injection_policy__abort
    list ->
  ?delay:
    path_matcher__route_rules__route_action__fault_injection_policy__delay
    list ->
  unit ->
  path_matcher__route_rules__route_action__fault_injection_policy

type path_matcher__route_rules__route_action__request_mirror_policy

val path_matcher__route_rules__route_action__request_mirror_policy :
  backend_service:string prop ->
  unit ->
  path_matcher__route_rules__route_action__request_mirror_policy

type path_matcher__route_rules__route_action__retry_policy__per_try_timeout

val path_matcher__route_rules__route_action__retry_policy__per_try_timeout :
  ?nanos:float prop ->
  seconds:string prop ->
  unit ->
  path_matcher__route_rules__route_action__retry_policy__per_try_timeout

type path_matcher__route_rules__route_action__retry_policy

val path_matcher__route_rules__route_action__retry_policy :
  ?retry_conditions:string prop list ->
  ?per_try_timeout:
    path_matcher__route_rules__route_action__retry_policy__per_try_timeout
    list ->
  num_retries:float prop ->
  unit ->
  path_matcher__route_rules__route_action__retry_policy

type path_matcher__route_rules__route_action__timeout

val path_matcher__route_rules__route_action__timeout :
  ?nanos:float prop ->
  seconds:string prop ->
  unit ->
  path_matcher__route_rules__route_action__timeout

type path_matcher__route_rules__route_action__url_rewrite

val path_matcher__route_rules__route_action__url_rewrite :
  ?host_rewrite:string prop ->
  ?path_prefix_rewrite:string prop ->
  ?path_template_rewrite:string prop ->
  unit ->
  path_matcher__route_rules__route_action__url_rewrite

type path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add

val path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add

type path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add

val path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add :
  header_name:string prop ->
  header_value:string prop ->
  replace:bool prop ->
  unit ->
  path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add

type path_matcher__route_rules__route_action__weighted_backend_services__header_action

val path_matcher__route_rules__route_action__weighted_backend_services__header_action :
  ?request_headers_to_remove:string prop list ->
  ?response_headers_to_remove:string prop list ->
  ?request_headers_to_add:
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__request_headers_to_add
    list ->
  ?response_headers_to_add:
    path_matcher__route_rules__route_action__weighted_backend_services__header_action__response_headers_to_add
    list ->
  unit ->
  path_matcher__route_rules__route_action__weighted_backend_services__header_action

type path_matcher__route_rules__route_action__weighted_backend_services

val path_matcher__route_rules__route_action__weighted_backend_services :
  ?header_action:
    path_matcher__route_rules__route_action__weighted_backend_services__header_action
    list ->
  backend_service:string prop ->
  weight:float prop ->
  unit ->
  path_matcher__route_rules__route_action__weighted_backend_services

type path_matcher__route_rules__route_action

val path_matcher__route_rules__route_action :
  ?cors_policy:
    path_matcher__route_rules__route_action__cors_policy list ->
  ?fault_injection_policy:
    path_matcher__route_rules__route_action__fault_injection_policy
    list ->
  ?request_mirror_policy:
    path_matcher__route_rules__route_action__request_mirror_policy
    list ->
  ?retry_policy:
    path_matcher__route_rules__route_action__retry_policy list ->
  ?timeout:path_matcher__route_rules__route_action__timeout list ->
  ?url_rewrite:
    path_matcher__route_rules__route_action__url_rewrite list ->
  ?weighted_backend_services:
    path_matcher__route_rules__route_action__weighted_backend_services
    list ->
  unit ->
  path_matcher__route_rules__route_action

type path_matcher__route_rules__url_redirect

val path_matcher__route_rules__url_redirect :
  ?host_redirect:string prop ->
  ?https_redirect:bool prop ->
  ?path_redirect:string prop ->
  ?prefix_redirect:string prop ->
  ?redirect_response_code:string prop ->
  ?strip_query:bool prop ->
  unit ->
  path_matcher__route_rules__url_redirect

type path_matcher__route_rules

val path_matcher__route_rules :
  ?service:string prop ->
  ?header_action:path_matcher__route_rules__header_action list ->
  ?match_rules:path_matcher__route_rules__match_rules list ->
  ?route_action:path_matcher__route_rules__route_action list ->
  ?url_redirect:path_matcher__route_rules__url_redirect list ->
  priority:float prop ->
  unit ->
  path_matcher__route_rules

type path_matcher

val path_matcher :
  ?default_service:string prop ->
  ?description:string prop ->
  ?default_route_action:path_matcher__default_route_action list ->
  ?default_url_redirect:path_matcher__default_url_redirect list ->
  ?header_action:path_matcher__header_action list ->
  ?path_rule:path_matcher__path_rule list ->
  ?route_rules:path_matcher__route_rules list ->
  name:string prop ->
  unit ->
  path_matcher

type test

val test :
  ?description:string prop ->
  host:string prop ->
  path:string prop ->
  service:string prop ->
  unit ->
  test

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_url_map

val google_compute_url_map :
  ?default_service:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?default_route_action:default_route_action list ->
  ?default_url_redirect:default_url_redirect list ->
  ?header_action:header_action list ->
  ?path_matcher:path_matcher list ->
  ?test:test list ->
  ?timeouts:timeouts ->
  name:string prop ->
  host_rule:host_rule list ->
  unit ->
  google_compute_url_map

val yojson_of_google_compute_url_map : google_compute_url_map -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  creation_timestamp : string prop;
  default_service : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  map_id : float prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_service:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?default_route_action:default_route_action list ->
  ?default_url_redirect:default_url_redirect list ->
  ?header_action:header_action list ->
  ?path_matcher:path_matcher list ->
  ?test:test list ->
  ?timeouts:timeouts ->
  name:string prop ->
  host_rule:host_rule list ->
  string ->
  t

val make :
  ?default_service:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?default_route_action:default_route_action list ->
  ?default_url_redirect:default_url_redirect list ->
  ?header_action:header_action list ->
  ?path_matcher:path_matcher list ->
  ?test:test list ->
  ?timeouts:timeouts ->
  name:string prop ->
  host_rule:host_rule list ->
  string ->
  t Tf_core.resource
