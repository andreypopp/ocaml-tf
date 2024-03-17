(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_schemas_schema = {
  content : string prop;  (** content *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  registry_name : string prop;  (** registry_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop; [@key "type"]  (** type *)
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
