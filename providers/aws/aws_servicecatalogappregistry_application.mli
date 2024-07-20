(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_servicecatalogappregistry_application

val aws_servicecatalogappregistry_application :
  ?description:string prop ->
  name:string prop ->
  unit ->
  aws_servicecatalogappregistry_application

val yojson_of_aws_servicecatalogappregistry_application :
  aws_servicecatalogappregistry_application -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_tag : (string * string) list prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
