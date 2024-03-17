(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dax_subnet_group = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  subnet_ids : string list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_dax_subnet_group *)

let aws_dax_subnet_group ?description ?id ~name ~subnet_ids
    __resource_id =
  let __resource_type = "aws_dax_subnet_group" in
  let __resource = { description; id; name; subnet_ids } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dax_subnet_group __resource);
  ()
