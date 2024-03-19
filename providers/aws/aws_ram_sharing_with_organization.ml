(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ram_sharing_with_organization = {
  id: string  prop option; [@option] (** id *)
} [@@deriving yojson_of]
(** aws_ram_sharing_with_organization *)

let aws_ram_sharing_with_organization ?id () =
  ({
    id;
  } : aws_ram_sharing_with_organization);;

type t = {
  id: string prop;
}

let register ?tf_module ?id __resource_id =
  let __resource_type = "aws_ram_sharing_with_organization" in
  let __resource = aws_ram_sharing_with_organization ?id () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_sharing_with_organization __resource);
  let __resource_attributes = ({
    id = Prop.computed __resource_type __resource_id "id";
  } : t) in
  __resource_attributes;;

