(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eip_association = {
  allow_reassociation : bool option; [@option]
      (** allow_reassociation *)
}
[@@deriving yojson_of]
(** aws_eip_association *)

let aws_eip_association ?allow_reassociation __resource_id =
  let __resource_type = "aws_eip_association" in
  let __resource = { allow_reassociation } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eip_association __resource);
  ()
