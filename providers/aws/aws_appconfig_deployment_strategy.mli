(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_appconfig_deployment_strategy

val aws_appconfig_deployment_strategy :
  ?description:string prop ->
  ?final_bake_time_in_minutes:float prop ->
  ?growth_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  deployment_duration_in_minutes:float prop ->
  growth_factor:float prop ->
  name:string prop ->
  replicate_to:string prop ->
  unit ->
  aws_appconfig_deployment_strategy

val yojson_of_aws_appconfig_deployment_strategy :
  aws_appconfig_deployment_strategy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  deployment_duration_in_minutes : float prop;
  description : string prop;
  final_bake_time_in_minutes : float prop;
  growth_factor : float prop;
  growth_type : string prop;
  id : string prop;
  name : string prop;
  replicate_to : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?final_bake_time_in_minutes:float prop ->
  ?growth_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  deployment_duration_in_minutes:float prop ->
  growth_factor:float prop ->
  name:string prop ->
  replicate_to:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?final_bake_time_in_minutes:float prop ->
  ?growth_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  deployment_duration_in_minutes:float prop ->
  growth_factor:float prop ->
  name:string prop ->
  replicate_to:string prop ->
  string ->
  t Tf_core.resource
