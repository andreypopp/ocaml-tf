(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_schemas_schema = {
  content : string;  (** content *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  registry_name : string;  (** registry_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_schemas_schema *)

let aws_schemas_schema ?description ?tags ~content ~name
    ~registry_name ~type_ __resource_id =
  let __resource_type = "aws_schemas_schema" in
  let __resource =
    { content; description; name; registry_name; tags; type_ }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_schemas_schema __resource);
  ()
