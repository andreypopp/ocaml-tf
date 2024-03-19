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
    ~compatibility ~data_format ~schema_definition ~schema_name () :
    aws_glue_schema =
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

type t = {
  arn : string prop;
  compatibility : string prop;
  data_format : string prop;
  description : string prop;
  id : string prop;
  latest_schema_version : float prop;
  next_schema_version : float prop;
  registry_arn : string prop;
  registry_name : string prop;
  schema_checkpoint : float prop;
  schema_definition : string prop;
  schema_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?registry_arn ?tags
    ?tags_all ~compatibility ~data_format ~schema_definition
    ~schema_name __resource_id =
  let __resource_type = "aws_glue_schema" in
  let __resource =
    aws_glue_schema ?description ?id ?registry_arn ?tags ?tags_all
      ~compatibility ~data_format ~schema_definition ~schema_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_schema __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       compatibility =
         Prop.computed __resource_type __resource_id "compatibility";
       data_format =
         Prop.computed __resource_type __resource_id "data_format";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       latest_schema_version =
         Prop.computed __resource_type __resource_id
           "latest_schema_version";
       next_schema_version =
         Prop.computed __resource_type __resource_id
           "next_schema_version";
       registry_arn =
         Prop.computed __resource_type __resource_id "registry_arn";
       registry_name =
         Prop.computed __resource_type __resource_id "registry_name";
       schema_checkpoint =
         Prop.computed __resource_type __resource_id
           "schema_checkpoint";
       schema_definition =
         Prop.computed __resource_type __resource_id
           "schema_definition";
       schema_name =
         Prop.computed __resource_type __resource_id "schema_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
