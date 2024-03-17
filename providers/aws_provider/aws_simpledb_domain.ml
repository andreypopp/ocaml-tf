(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_simpledb_domain = { name : string  (** name *) }
[@@deriving yojson_of]
(** aws_simpledb_domain *)

let aws_simpledb_domain ~name __resource_id =
  let __resource_type = "aws_simpledb_domain" in
  let __resource = { name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_simpledb_domain __resource);
  ()
