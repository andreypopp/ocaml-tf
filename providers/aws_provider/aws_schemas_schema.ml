(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_schemas_schema = {
  content : string;  (** content *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  registry_name : string;  (** registry_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_schemas_schema *)

let aws_schemas_schema ?description ?id ?tags ?tags_all ~content
    ~name ~registry_name ~type_ __resource_id =
  let __resource_type = "aws_schemas_schema" in
  let __resource =
    {
      content;
      description;
      id;
      name;
      registry_name;
      tags;
      tags_all;
      type_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_schemas_schema __resource);
  ()
