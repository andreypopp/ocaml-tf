(** Get a list of users from Okta. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type users = {
  admin_roles : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** admin_roles *)
  city : string prop;  (** city *)
  cost_center : string prop;  (** cost_center *)
  country_code : string prop;  (** country_code *)
  custom_profile_attributes : string prop;
      (** custom_profile_attributes *)
  department : string prop;  (** department *)
  display_name : string prop;  (** display_name *)
  division : string prop;  (** division *)
  email : string prop;  (** email *)
  employee_number : string prop;  (** employee_number *)
  first_name : string prop;  (** first_name *)
  group_memberships : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** group_memberships *)
  honorific_prefix : string prop;  (** honorific_prefix *)
  honorific_suffix : string prop;  (** honorific_suffix *)
  id : string prop;  (** id *)
  last_name : string prop;  (** last_name *)
  locale : string prop;  (** locale *)
  login : string prop;  (** login *)
  manager : string prop;  (** manager *)
  manager_id : string prop;  (** manager_id *)
  middle_name : string prop;  (** middle_name *)
  mobile_phone : string prop;  (** mobile_phone *)
  nick_name : string prop;  (** nick_name *)
  organization : string prop;  (** organization *)
  postal_address : string prop;  (** postal_address *)
  preferred_language : string prop;  (** preferred_language *)
  primary_phone : string prop;  (** primary_phone *)
  profile_url : string prop;  (** profile_url *)
  roles : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** roles *)
  second_email : string prop;  (** second_email *)
  state : string prop;  (** state *)
  status : string prop;  (** status *)
  street_address : string prop;  (** street_address *)
  timezone : string prop;  (** timezone *)
  title : string prop;  (** title *)
  user_type : string prop;  (** user_type *)
  zip_code : string prop;  (** zip_code *)
}

type search

val search :
  ?comparison:string prop ->
  ?expression:string prop ->
  ?name:string prop ->
  ?value:string prop ->
  unit ->
  search

type okta_users

val okta_users :
  ?compound_search_operator:string prop ->
  ?delay_read_seconds:string prop ->
  ?group_id:string prop ->
  ?id:string prop ->
  ?include_groups:bool prop ->
  ?include_roles:bool prop ->
  search:search list ->
  unit ->
  okta_users

val yojson_of_okta_users : okta_users -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  compound_search_operator : string prop;
  delay_read_seconds : string prop;
  group_id : string prop;
  id : string prop;
  include_groups : bool prop;
  include_roles : bool prop;
  users : users list prop;
}

val register :
  ?tf_module:tf_module ->
  ?compound_search_operator:string prop ->
  ?delay_read_seconds:string prop ->
  ?group_id:string prop ->
  ?id:string prop ->
  ?include_groups:bool prop ->
  ?include_roles:bool prop ->
  search:search list ->
  string ->
  t

val make :
  ?compound_search_operator:string prop ->
  ?delay_read_seconds:string prop ->
  ?group_id:string prop ->
  ?id:string prop ->
  ?include_groups:bool prop ->
  ?include_roles:bool prop ->
  search:search list ->
  string ->
  t Tf_core.resource
