(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_quicksight_template_alias

type t = private {
  alias_name: string prop;
  arn: string prop;
  aws_account_id: string prop;
  id: string prop;
  template_id: string prop;
  template_version_number: float prop;
}

val aws_quicksight_template_alias :
    ?aws_account_id:string prop ->
    alias_name:string prop ->
    template_id:string prop ->
    template_version_number:float prop ->
    string ->
    t

