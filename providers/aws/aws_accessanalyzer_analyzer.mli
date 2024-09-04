(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type configuration__unused_access

val configuration__unused_access :
  ?unused_access_age:float prop ->
  unit ->
  configuration__unused_access

type configuration

val configuration :
  ?unused_access:configuration__unused_access list ->
  unit ->
  configuration

type aws_accessanalyzer_analyzer

val aws_accessanalyzer_analyzer :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?configuration:configuration list ->
  analyzer_name:string prop ->
  unit ->
  aws_accessanalyzer_analyzer

val yojson_of_aws_accessanalyzer_analyzer :
  aws_accessanalyzer_analyzer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  analyzer_name : string prop;
  arn : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?configuration:configuration list ->
  analyzer_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?type_:string prop ->
  ?configuration:configuration list ->
  analyzer_name:string prop ->
  string ->
  t Tf_core.resource
