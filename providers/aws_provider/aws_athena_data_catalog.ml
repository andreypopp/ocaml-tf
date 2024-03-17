(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_athena_data_catalog = {
  description : string;  (** description *)
  name : string;  (** name *)
  parameters : (string * string) list;  (** parameters *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_athena_data_catalog *)

let aws_athena_data_catalog ?tags ~description ~name ~parameters
    ~type_ __resource_id =
  let __resource_type = "aws_athena_data_catalog" in
  let __resource = { description; name; parameters; tags; type_ } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_athena_data_catalog __resource);
  ()
