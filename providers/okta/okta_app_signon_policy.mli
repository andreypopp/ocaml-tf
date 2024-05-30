(**  Manages a sign-on policy.
		
~> **WARNING:** This feature is only available as a part of the Okta Identity
Engine (OIE) and ***is not*** compatible with Classic orgs. Authentication
policies for applications in a Classic org can only be modified in the Admin UI,
there isn't a public API for this. Therefore the Okta Terraform Provider does
not support this resource for Classic orgs. [Contact
support](mailto:dev-inquiries@okta.com) for further information.
This resource allows you to create and configure a sign-on policy for the
application. Inside the product a sign-on policy is referenced as an
_authentication policy_, in the public API the policy is of type
['ACCESS_POLICY'](https://developer.okta.com/docs/reference/api/policy/#policy-object).
A newly created app's sign-on policy will always contain the default
authentication policy unless one is assigned via 'authentication_policy' in the
app resource. At the API level the default policy has system property value of
true.
~> **WARNING:** When this policy is destroyed any other applications that
associate the policy as their authentication policy will be reassigned to the
default/system access policy. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_app_signon_policy

val okta_app_signon_policy :
  ?id:string prop ->
  description:string prop ->
  name:string prop ->
  unit ->
  okta_app_signon_policy

val yojson_of_okta_app_signon_policy : okta_app_signon_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  description:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  description:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
