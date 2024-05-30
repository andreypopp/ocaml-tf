(** Get a single users from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type search

val search :
  ?comparison:string prop ->
  ?expression:string prop ->
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  search

type okta_user

val okta_user :
  ?compound_search_operator:string prop ->
  ?delay_read_seconds:string prop ->
  ?id:string prop ->
  ?skip_groups:bool prop ->
  ?skip_roles:bool prop ->
  ?user_id:string prop ->
  search:search list ->
  unit ->
  okta_user

val yojson_of_okta_user : okta_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_roles : string list prop;
  city : string prop;
  compound_search_operator : string prop;
  cost_center : string prop;
  country_code : string prop;
  custom_profile_attributes : string prop;
  delay_read_seconds : string prop;
  department : string prop;
  display_name : string prop;
  division : string prop;
  email : string prop;
  employee_number : string prop;
  first_name : string prop;
  group_memberships : string list prop;
  honorific_prefix : string prop;
  honorific_suffix : string prop;
  id : string prop;
  last_name : string prop;
  locale : string prop;
  login : string prop;
  manager : string prop;
  manager_id : string prop;
  middle_name : string prop;
  mobile_phone : string prop;
  nick_name : string prop;
  organization : string prop;
  postal_address : string prop;
  preferred_language : string prop;
  primary_phone : string prop;
  profile_url : string prop;
  roles : string list prop;
  second_email : string prop;
  skip_groups : bool prop;
  skip_roles : bool prop;
  state : string prop;
  status : string prop;
  street_address : string prop;
  timezone : string prop;
  title : string prop;
  user_id : string prop;
  user_type : string prop;
  zip_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?compound_search_operator:string prop ->
  ?delay_read_seconds:string prop ->
  ?id:string prop ->
  ?skip_groups:bool prop ->
  ?skip_roles:bool prop ->
  ?user_id:string prop ->
  search:search list ->
  string ->
  t

val make :
  ?compound_search_operator:string prop ->
  ?delay_read_seconds:string prop ->
  ?id:string prop ->
  ?skip_groups:bool prop ->
  ?skip_roles:bool prop ->
  ?user_id:string prop ->
  search:search list ->
  string ->
  t Tf_core.resource
