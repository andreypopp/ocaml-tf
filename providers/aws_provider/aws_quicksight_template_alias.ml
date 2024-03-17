(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_quicksight_template_alias = {
  alias_name: string;  (** alias_name *)
  template_id: string;  (** template_id *)
  template_version_number: float;  (** template_version_number *)
} [@@deriving yojson_of]
(** aws_quicksight_template_alias *)

let aws_quicksight_template_alias   ~alias_name ~template_id ~template_version_number  __resource_id =
  let __resource_type = "aws_quicksight_template_alias" in
  let __resource = {
    alias_name;
    template_id;
    template_version_number;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_quicksight_template_alias __resource);
  ()
  ;;

