(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type physical_connection_requirements = {
  availability_zone : string prop;  (** availability_zone *)
  security_group_id_list : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** security_group_id_list *)
  subnet_id : string prop;  (** subnet_id *)
}

type aws_glue_connection

val aws_glue_connection :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  unit ->
  aws_glue_connection

val yojson_of_aws_glue_connection : aws_glue_connection -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  catalog_id : string prop;
  connection_properties : string Tf_core.assoc prop;
  connection_type : string prop;
  description : string prop;
  id : string prop;
  match_criteria : string list prop;
  name : string prop;
  physical_connection_requirements :
    physical_connection_requirements list prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t

val make :
  ?tags:string prop Tf_core.assoc ->
  id:string prop ->
  string ->
  t Tf_core.resource
