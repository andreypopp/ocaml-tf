(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_schema = {
  compatibility : string;  (** compatibility *)
  data_format : string;  (** data_format *)
  description : string option; [@option]  (** description *)
  schema_definition : string;  (** schema_definition *)
  schema_name : string;  (** schema_name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_glue_schema *)

let aws_glue_schema ?description ?tags ~compatibility ~data_format
    ~schema_definition ~schema_name __resource_id =
  let __resource_type = "aws_glue_schema" in
  let __resource =
    {
      compatibility;
      data_format;
      description;
      schema_definition;
      schema_name;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_schema __resource);
  ()
