(** Manages Profile Enrollment Policy Apps
~> **WARNING:** This feature is only available as a part of the Identity Engine. [Contact support](mailto:dev-inquiries@okta.com) for further information.
This resource allows you to manage the apps in the Profile Enrollment Policy. 
**Important Notes:** 
 - Default Enrollment Policy can not be used in this resource since it is used as a policy to re-assign apps to when they are unassigned from this one.
 - When re-assigning the app to another policy, please use 'depends_on' in the policy to which the app will be assigned. This is necessary to avoid 
  unexpected behavior, since if the app is unassigned from the policy it is just assigned to the 'Default' one. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_profile_enrollment_apps

val okta_policy_profile_enrollment_apps :
  ?apps:string prop list ->
  ?id:string prop ->
  policy_id:string prop ->
  unit ->
  okta_policy_profile_enrollment_apps

val yojson_of_okta_policy_profile_enrollment_apps :
  okta_policy_profile_enrollment_apps -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  apps : string list prop;
  default_policy_id : string prop;
  id : string prop;
  policy_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?apps:string prop list ->
  ?id:string prop ->
  policy_id:string prop ->
  string ->
  t

val make :
  ?apps:string prop list ->
  ?id:string prop ->
  policy_id:string prop ->
  string ->
  t Tf_core.resource
