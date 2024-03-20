(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_sagemaker_servicecatalog_portfolio_status

val aws_sagemaker_servicecatalog_portfolio_status :
  ?id:string prop ->
  status:string prop ->
  unit ->
  aws_sagemaker_servicecatalog_portfolio_status

val yojson_of_aws_sagemaker_servicecatalog_portfolio_status :
  aws_sagemaker_servicecatalog_portfolio_status -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; status : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  status:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  status:string prop ->
  string ->
  t Tf_core.resource
