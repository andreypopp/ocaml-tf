(** Creates a Profile Enrollment Policy
		
~> **WARNING:** This feature is only available as a part of the Identity Engine. [Contact support](mailto:dev-inquiries@okta.com) for further information.
This resource allows you to create and configure a Profile Enrollment Policy. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_policy_profile_enrollment

val okta_policy_profile_enrollment :
  ?id:string prop ->
  ?status:string prop ->
  name:string prop ->
  unit ->
  okta_policy_profile_enrollment

val yojson_of_okta_policy_profile_enrollment :
  okta_policy_profile_enrollment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?status:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?status:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
