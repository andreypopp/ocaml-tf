(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codecommit_trigger__trigger = {
  branches : string list option; [@option]  (** branches *)
  custom_data : string option; [@option]  (** custom_data *)
  destination_arn : string;  (** destination_arn *)
  events : string list;  (** events *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_codecommit_trigger__trigger *)

type aws_codecommit_trigger = {
  id : string option; [@option]  (** id *)
  repository_name : string;  (** repository_name *)
  trigger : aws_codecommit_trigger__trigger list;
}
[@@deriving yojson_of]
(** aws_codecommit_trigger *)

let aws_codecommit_trigger ?id ~repository_name ~trigger
    __resource_id =
  let __resource_type = "aws_codecommit_trigger" in
  let __resource = { id; repository_name; trigger } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codecommit_trigger __resource);
  ()
