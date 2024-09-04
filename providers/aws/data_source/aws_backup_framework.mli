(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type control__scope = {
  compliance_resource_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** compliance_resource_ids *)
  compliance_resource_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** compliance_resource_types *)
  tags : string prop Tf_core.assoc;  (** tags *)
}

type control__input_parameter = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type control = {
  input_parameter : control__input_parameter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** input_parameter *)
  name : string prop;  (** name *)
  scope : control__scope list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** scope *)
}

type aws_backup_framework

val aws_backup_framework :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  unit ->
  aws_backup_framework

val yojson_of_aws_backup_framework : aws_backup_framework -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  control : control list prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:string prop Tf_core.assoc ->
  name:string prop ->
  string ->
  t Tf_core.resource
