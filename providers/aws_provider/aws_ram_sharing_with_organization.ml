(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ram_sharing_with_organization = {
  id: string prop option; [@option] (** id *)
} [@@deriving yojson_of]
(** aws_ram_sharing_with_organization *)

let aws_ram_sharing_with_organization ?id    __resource_id =
  let __resource_type = "aws_ram_sharing_with_organization" in
  let __resource = {
    id;
  } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_sharing_with_organization __resource);
  ()
  ;;

