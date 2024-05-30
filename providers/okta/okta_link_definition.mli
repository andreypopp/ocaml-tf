(** Manages the creation and removal of the link definitions.
		
Link definition operations allow you to manage the creation and removal of the link definitions. If you remove a link 
definition, links based on that definition are unavailable. Note that this resource is immutable, thus can not be modified.
~> **NOTE:** Links reappear if you recreate the definition. However, Okta is likely to change this behavior so that links don't reappear. Don't rely on this behavior in production environments. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_link_definition

val okta_link_definition :
  ?id:string prop ->
  associated_description:string prop ->
  associated_name:string prop ->
  associated_title:string prop ->
  primary_description:string prop ->
  primary_name:string prop ->
  primary_title:string prop ->
  unit ->
  okta_link_definition

val yojson_of_okta_link_definition : okta_link_definition -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  associated_description : string prop;
  associated_name : string prop;
  associated_title : string prop;
  id : string prop;
  primary_description : string prop;
  primary_name : string prop;
  primary_title : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  associated_description:string prop ->
  associated_name:string prop ->
  associated_title:string prop ->
  primary_description:string prop ->
  primary_name:string prop ->
  primary_title:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  associated_description:string prop ->
  associated_name:string prop ->
  associated_title:string prop ->
  primary_description:string prop ->
  primary_name:string prop ->
  primary_title:string prop ->
  string ->
  t Tf_core.resource
