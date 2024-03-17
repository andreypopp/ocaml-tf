(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_timestreamwrite_database = {
  database_name : string;  (** database_name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_timestreamwrite_database *)

let aws_timestreamwrite_database ?tags ~database_name __resource_id =
  let __resource_type = "aws_timestreamwrite_database" in
  let __resource = { database_name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_timestreamwrite_database __resource);
  ()
