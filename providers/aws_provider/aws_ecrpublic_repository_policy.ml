(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ecrpublic_repository_policy = {
  id : string option; [@option]  (** id *)
  policy : string;  (** policy *)
  repository_name : string;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_ecrpublic_repository_policy *)

let aws_ecrpublic_repository_policy ?id ~policy ~repository_name
    __resource_id =
  let __resource_type = "aws_ecrpublic_repository_policy" in
  let __resource = { id; policy; repository_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ecrpublic_repository_policy __resource);
  ()
