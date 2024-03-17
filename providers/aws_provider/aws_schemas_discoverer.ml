(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_schemas_discoverer = {
  description : string option; [@option]  (** description *)
  source_arn : string;  (** source_arn *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_schemas_discoverer *)

let aws_schemas_discoverer ?description ?tags ~source_arn
    __resource_id =
  let __resource_type = "aws_schemas_discoverer" in
  let __resource = { description; source_arn; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_schemas_discoverer __resource);
  ()
