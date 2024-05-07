

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_quicksight_template_alias

val aws_quicksight_template_alias :
    ?aws_account_id:string prop ->
    alias_name:string prop ->
    template_id:string prop ->
    template_version_number:float prop ->
    unit ->
    aws_quicksight_template_alias

val yojson_of_aws_quicksight_template_alias : aws_quicksight_template_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name: string;
  alias_name: string prop;
  arn: string prop;
  aws_account_id: string prop;
  id: string prop;
  template_id: string prop;
  template_version_number: float prop;
}

val register :
    ?tf_module:tf_module ->
    ?aws_account_id:string prop ->
    alias_name:string prop ->
    template_id:string prop ->
    template_version_number:float prop ->
    string ->
    t

val make :
    ?aws_account_id:string prop ->
    alias_name:string prop ->
    template_id:string prop ->
    template_version_number:float prop ->
    string ->
    t Tf_core.resource

