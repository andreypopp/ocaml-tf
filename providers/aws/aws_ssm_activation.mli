(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_ssm_activation

val aws_ssm_activation :
  ?description:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?registration_limit:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  iam_role:string prop ->
  unit ->
  aws_ssm_activation

val yojson_of_aws_ssm_activation : aws_ssm_activation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  activation_code : string prop;
  description : string prop;
  expiration_date : string prop;
  expired : bool prop;
  iam_role : string prop;
  id : string prop;
  name : string prop;
  registration_count : float prop;
  registration_limit : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?registration_limit:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  iam_role:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?registration_limit:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  iam_role:string prop ->
  string ->
  t Tf_core.resource
