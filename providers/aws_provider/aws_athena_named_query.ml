(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_athena_named_query = {
  database : string;  (** database *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  query : string;  (** query *)
  workgroup : string option; [@option]  (** workgroup *)
}
[@@deriving yojson_of]
(** aws_athena_named_query *)

let aws_athena_named_query ?description ?workgroup ~database ~name
    ~query __resource_id =
  let __resource_type = "aws_athena_named_query" in
  let __resource =
    { database; description; name; query; workgroup }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_athena_named_query __resource);
  ()
