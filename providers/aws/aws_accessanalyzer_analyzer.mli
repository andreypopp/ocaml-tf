(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type configuration__unused_access

val configuration__unused_access :
  ?unused_access_age:float prop ->
  unit ->
  configuration__unused_access

type configuration

val configuration :
  unused_access:configuration__unused_access list ->
  unit ->
  configuration

type aws_accessanalyzer_analyzer

val aws_accessanalyzer_analyzer :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  analyzer_name:string prop ->
  configuration:configuration list ->
  unit ->
  aws_accessanalyzer_analyzer

val yojson_of_aws_accessanalyzer_analyzer :
  aws_accessanalyzer_analyzer -> json

(** RESOURCE REGISTRATION *)

type t = private {
  analyzer_name : string prop;
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?type_:string prop ->
  analyzer_name:string prop ->
  configuration:configuration list ->
  string ->
  t
