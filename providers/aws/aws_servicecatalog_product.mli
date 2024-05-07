(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type provisioning_artifact_parameters

val provisioning_artifact_parameters :
  ?description:string prop ->
  ?disable_template_validation:bool prop ->
  ?name:string prop ->
  ?template_physical_id:string prop ->
  ?template_url:string prop ->
  ?type_:string prop ->
  unit ->
  provisioning_artifact_parameters

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_servicecatalog_product

val aws_servicecatalog_product :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?distributor:string prop ->
  ?id:string prop ->
  ?support_description:string prop ->
  ?support_email:string prop ->
  ?support_url:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  owner:string prop ->
  type_:string prop ->
  provisioning_artifact_parameters:
    provisioning_artifact_parameters list ->
  unit ->
  aws_servicecatalog_product

val yojson_of_aws_servicecatalog_product :
  aws_servicecatalog_product -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accept_language : string prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  distributor : string prop;
  has_default_path : bool prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  status : string prop;
  support_description : string prop;
  support_email : string prop;
  support_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?description:string prop ->
  ?distributor:string prop ->
  ?id:string prop ->
  ?support_description:string prop ->
  ?support_email:string prop ->
  ?support_url:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  owner:string prop ->
  type_:string prop ->
  provisioning_artifact_parameters:
    provisioning_artifact_parameters list ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?description:string prop ->
  ?distributor:string prop ->
  ?id:string prop ->
  ?support_description:string prop ->
  ?support_email:string prop ->
  ?support_url:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  name:string prop ->
  owner:string prop ->
  type_:string prop ->
  provisioning_artifact_parameters:
    provisioning_artifact_parameters list ->
  string ->
  t Tf_core.resource
