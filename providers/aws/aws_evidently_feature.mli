(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type evaluation_rules = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type variations__value

val variations__value :
  ?bool_value:string prop ->
  ?double_value:string prop ->
  ?long_value:string prop ->
  ?string_value:string prop ->
  unit ->
  variations__value

type variations

val variations :
  name:string prop ->
  value:variations__value list ->
  unit ->
  variations

type aws_evidently_feature

val aws_evidently_feature :
  ?default_variation:string prop ->
  ?description:string prop ->
  ?entity_overrides:string prop Tf_core.assoc ->
  ?evaluation_strategy:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  project:string prop ->
  variations:variations list ->
  unit ->
  aws_evidently_feature

val yojson_of_aws_evidently_feature : aws_evidently_feature -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  created_time : string prop;
  default_variation : string prop;
  description : string prop;
  entity_overrides : string Tf_core.assoc prop;
  evaluation_rules : evaluation_rules list prop;
  evaluation_strategy : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  project : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  value_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_variation:string prop ->
  ?description:string prop ->
  ?entity_overrides:string prop Tf_core.assoc ->
  ?evaluation_strategy:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  project:string prop ->
  variations:variations list ->
  string ->
  t

val make :
  ?default_variation:string prop ->
  ?description:string prop ->
  ?entity_overrides:string prop Tf_core.assoc ->
  ?evaluation_strategy:string prop ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  name:string prop ->
  project:string prop ->
  variations:variations list ->
  string ->
  t Tf_core.resource
