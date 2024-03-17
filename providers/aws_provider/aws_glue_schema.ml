(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_schema = {
  compatibility : string prop;  (** compatibility *)
  data_format : string prop;  (** data_format *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  registry_arn : string prop option; [@option]  (** registry_arn *)
  schema_definition : string prop;  (** schema_definition *)
  schema_name : string prop;  (** schema_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_glue_schema *)

let aws_glue_schema ?description ?id ?registry_arn ?tags ?tags_all
    ~compatibility ~data_format ~schema_definition ~schema_name
    __resource_id =
  let __resource_type = "aws_glue_schema" in
  let __resource =
    {
      compatibility;
      data_format;
      description;
      id;
      registry_arn;
      schema_definition;
      schema_name;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_schema __resource);
  ()
