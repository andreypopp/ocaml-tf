(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type source__source_data

val source__source_data :
  ?acm_pca_arn:string prop ->
  ?x509_certificate_data:string prop ->
  unit ->
  source__source_data

type source

val source :
  source_type:string prop ->
  source_data:source__source_data list ->
  unit ->
  source

type aws_rolesanywhere_trust_anchor

val aws_rolesanywhere_trust_anchor :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  source:source list ->
  unit ->
  aws_rolesanywhere_trust_anchor

val yojson_of_aws_rolesanywhere_trust_anchor :
  aws_rolesanywhere_trust_anchor -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  source:source list ->
  string ->
  t

val make :
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  name:string prop ->
  source:source list ->
  string ->
  t Tf_core.resource
