(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type definition__static

val definition__static :
  ?description:string prop ->
  statement:string prop ->
  unit ->
  definition__static

type definition__template_linked__principal

val definition__template_linked__principal :
  entity_id:string prop ->
  entity_type:string prop ->
  unit ->
  definition__template_linked__principal

type definition__template_linked__resource

val definition__template_linked__resource :
  entity_id:string prop ->
  entity_type:string prop ->
  unit ->
  definition__template_linked__resource

type definition__template_linked

val definition__template_linked :
  ?principal:definition__template_linked__principal list ->
  ?resource:definition__template_linked__resource list ->
  policy_template_id:string prop ->
  unit ->
  definition__template_linked

type definition

val definition :
  ?static:definition__static list ->
  ?template_linked:definition__template_linked list ->
  unit ->
  definition

type aws_verifiedpermissions_policy

val aws_verifiedpermissions_policy :
  ?definition:definition list ->
  policy_store_id:string prop ->
  unit ->
  aws_verifiedpermissions_policy

val yojson_of_aws_verifiedpermissions_policy :
  aws_verifiedpermissions_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  created_date : string prop;
  id : string prop;
  policy_id : string prop;
  policy_store_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?definition:definition list ->
  policy_store_id:string prop ->
  string ->
  t

val make :
  ?definition:definition list ->
  policy_store_id:string prop ->
  string ->
  t Tf_core.resource
