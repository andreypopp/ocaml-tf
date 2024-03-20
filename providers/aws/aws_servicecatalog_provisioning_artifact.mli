(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_servicecatalog_provisioning_artifact

val aws_servicecatalog_provisioning_artifact :
  ?accept_language:string prop ->
  ?active:bool prop ->
  ?description:string prop ->
  ?disable_template_validation:bool prop ->
  ?guidance:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?template_physical_id:string prop ->
  ?template_url:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  product_id:string prop ->
  unit ->
  aws_servicecatalog_provisioning_artifact

val yojson_of_aws_servicecatalog_provisioning_artifact :
  aws_servicecatalog_provisioning_artifact -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_language : string prop;
  active : bool prop;
  created_time : string prop;
  description : string prop;
  disable_template_validation : bool prop;
  guidance : string prop;
  id : string prop;
  name : string prop;
  product_id : string prop;
  provisioning_artifact_id : string prop;
  template_physical_id : string prop;
  template_url : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?active:bool prop ->
  ?description:string prop ->
  ?disable_template_validation:bool prop ->
  ?guidance:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?template_physical_id:string prop ->
  ?template_url:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  product_id:string prop ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?active:bool prop ->
  ?description:string prop ->
  ?disable_template_validation:bool prop ->
  ?guidance:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?template_physical_id:string prop ->
  ?template_url:string prop ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  product_id:string prop ->
  string ->
  t Tf_core.resource
