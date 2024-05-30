(** Manages Resource Sets as custom collections of resources. This resource allows the creation and manipulation of Okta Resource Sets as custom collections of Okta resources. You can use Okta Resource Sets to assign Custom Roles to administrators who are scoped to the designated resources. 
The 'resources' field supports the following:
	- Apps
	- Groups
	- All Users within a Group
	- All Users within the org
	- All Groups within the org
	- All Apps within the org
	- All Apps of the same type *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_resource_set

val okta_resource_set :
  ?id:string prop ->
  ?resources:string prop list ->
  description:string prop ->
  label:string prop ->
  unit ->
  okta_resource_set

val yojson_of_okta_resource_set : okta_resource_set -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  description : string prop;
  id : string prop;
  label : string prop;
  resources : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?resources:string prop list ->
  description:string prop ->
  label:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?resources:string prop list ->
  description:string prop ->
  label:string prop ->
  string ->
  t Tf_core.resource
