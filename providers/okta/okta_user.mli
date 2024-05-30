(** Creates an Okta User. This resource allows you to create and configure an Okta User. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type password_hash

val password_hash :
  ?salt:string prop ->
  ?salt_order:string prop ->
  ?work_factor:float prop ->
  algorithm:string prop ->
  value:string prop ->
  unit ->
  password_hash

type okta_user

val okta_user :
  ?city:string prop ->
  ?cost_center:string prop ->
  ?country_code:string prop ->
  ?custom_profile_attributes:string prop ->
  ?custom_profile_attributes_to_ignore:string prop list ->
  ?department:string prop ->
  ?display_name:string prop ->
  ?division:string prop ->
  ?employee_number:string prop ->
  ?expire_password_on_create:bool prop ->
  ?honorific_prefix:string prop ->
  ?honorific_suffix:string prop ->
  ?id:string prop ->
  ?locale:string prop ->
  ?manager:string prop ->
  ?manager_id:string prop ->
  ?middle_name:string prop ->
  ?mobile_phone:string prop ->
  ?nick_name:string prop ->
  ?old_password:string prop ->
  ?organization:string prop ->
  ?password:string prop ->
  ?password_inline_hook:string prop ->
  ?postal_address:string prop ->
  ?preferred_language:string prop ->
  ?primary_phone:string prop ->
  ?profile_url:string prop ->
  ?recovery_answer:string prop ->
  ?recovery_question:string prop ->
  ?second_email:string prop ->
  ?skip_roles:bool prop ->
  ?state:string prop ->
  ?status:string prop ->
  ?street_address:string prop ->
  ?timezone:string prop ->
  ?title:string prop ->
  ?user_type:string prop ->
  ?zip_code:string prop ->
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  login:string prop ->
  password_hash:password_hash list ->
  unit ->
  okta_user

val yojson_of_okta_user : okta_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  city : string prop;
  cost_center : string prop;
  country_code : string prop;
  custom_profile_attributes : string prop;
  custom_profile_attributes_to_ignore : string list prop;
  department : string prop;
  display_name : string prop;
  division : string prop;
  email : string prop;
  employee_number : string prop;
  expire_password_on_create : bool prop;
  first_name : string prop;
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
  old_password : string prop;
  organization : string prop;
  password : string prop;
  password_inline_hook : string prop;
  postal_address : string prop;
  preferred_language : string prop;
  primary_phone : string prop;
  profile_url : string prop;
  raw_status : string prop;
  recovery_answer : string prop;
  recovery_question : string prop;
  second_email : string prop;
  skip_roles : bool prop;
  state : string prop;
  status : string prop;
  street_address : string prop;
  timezone : string prop;
  title : string prop;
  user_type : string prop;
  zip_code : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?city:string prop ->
  ?cost_center:string prop ->
  ?country_code:string prop ->
  ?custom_profile_attributes:string prop ->
  ?custom_profile_attributes_to_ignore:string prop list ->
  ?department:string prop ->
  ?display_name:string prop ->
  ?division:string prop ->
  ?employee_number:string prop ->
  ?expire_password_on_create:bool prop ->
  ?honorific_prefix:string prop ->
  ?honorific_suffix:string prop ->
  ?id:string prop ->
  ?locale:string prop ->
  ?manager:string prop ->
  ?manager_id:string prop ->
  ?middle_name:string prop ->
  ?mobile_phone:string prop ->
  ?nick_name:string prop ->
  ?old_password:string prop ->
  ?organization:string prop ->
  ?password:string prop ->
  ?password_inline_hook:string prop ->
  ?postal_address:string prop ->
  ?preferred_language:string prop ->
  ?primary_phone:string prop ->
  ?profile_url:string prop ->
  ?recovery_answer:string prop ->
  ?recovery_question:string prop ->
  ?second_email:string prop ->
  ?skip_roles:bool prop ->
  ?state:string prop ->
  ?status:string prop ->
  ?street_address:string prop ->
  ?timezone:string prop ->
  ?title:string prop ->
  ?user_type:string prop ->
  ?zip_code:string prop ->
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  login:string prop ->
  password_hash:password_hash list ->
  string ->
  t

val make :
  ?city:string prop ->
  ?cost_center:string prop ->
  ?country_code:string prop ->
  ?custom_profile_attributes:string prop ->
  ?custom_profile_attributes_to_ignore:string prop list ->
  ?department:string prop ->
  ?display_name:string prop ->
  ?division:string prop ->
  ?employee_number:string prop ->
  ?expire_password_on_create:bool prop ->
  ?honorific_prefix:string prop ->
  ?honorific_suffix:string prop ->
  ?id:string prop ->
  ?locale:string prop ->
  ?manager:string prop ->
  ?manager_id:string prop ->
  ?middle_name:string prop ->
  ?mobile_phone:string prop ->
  ?nick_name:string prop ->
  ?old_password:string prop ->
  ?organization:string prop ->
  ?password:string prop ->
  ?password_inline_hook:string prop ->
  ?postal_address:string prop ->
  ?preferred_language:string prop ->
  ?primary_phone:string prop ->
  ?profile_url:string prop ->
  ?recovery_answer:string prop ->
  ?recovery_question:string prop ->
  ?second_email:string prop ->
  ?skip_roles:bool prop ->
  ?state:string prop ->
  ?status:string prop ->
  ?street_address:string prop ->
  ?timezone:string prop ->
  ?title:string prop ->
  ?user_type:string prop ->
  ?zip_code:string prop ->
  email:string prop ->
  first_name:string prop ->
  last_name:string prop ->
  login:string prop ->
  password_hash:password_hash list ->
  string ->
  t Tf_core.resource
