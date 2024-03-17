(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_redshift_subnet_group = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  subnet_ids : string list;  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_redshift_subnet_group *)

let aws_redshift_subnet_group ?description ?tags ~name ~subnet_ids
    __resource_id =
  let __resource_type = "aws_redshift_subnet_group" in
  let __resource = { description; name; subnet_ids; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_redshift_subnet_group __resource);
  ()
