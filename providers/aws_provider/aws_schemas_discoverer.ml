(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_schemas_discoverer = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  source_arn : string prop;  (** source_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_schemas_discoverer *)

let aws_schemas_discoverer ?description ?id ?tags ?tags_all
    ~source_arn __resource_id =
  let __resource_type = "aws_schemas_discoverer" in
  let __resource = { description; id; source_arn; tags; tags_all } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_schemas_discoverer __resource);
  ()
