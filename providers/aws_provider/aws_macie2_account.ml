(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_account = {
  finding_publishing_frequency: string option; [@option] (** finding_publishing_frequency *)
  id: string option; [@option] (** id *)
  status: string option; [@option] (** status *)
} [@@deriving yojson_of]
(** aws_macie2_account *)

let aws_macie2_account ?finding_publishing_frequency ?id ?status    __resource_id =
  let __resource_type = "aws_macie2_account" in
  let __resource = {
    finding_publishing_frequency;
    id;
    status;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_account __resource);
  ()
  ;;

