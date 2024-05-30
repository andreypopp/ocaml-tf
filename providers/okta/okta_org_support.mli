(** Manages Okta Support access your org
This resource allows you to temporarily allow Okta Support to access your org as an administrator. By default,
access will be granted for eight hours. Removing this resource will revoke Okta Support access to your org. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_org_support

val okta_org_support :
  ?extend_by:float prop ->
  ?id:string prop ->
  unit ->
  okta_org_support

val yojson_of_okta_org_support : okta_org_support -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  expiration : string prop;
  extend_by : float prop;
  id : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?extend_by:float prop ->
  ?id:string prop ->
  string ->
  t

val make :
  ?extend_by:float prop ->
  ?id:string prop ->
  string ->
  t Tf_core.resource
