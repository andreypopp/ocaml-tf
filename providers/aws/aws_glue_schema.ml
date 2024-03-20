(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?registry_arn ?tags ?tags_all
    ~compatibility ~data_format ~schema_definition ~schema_name __id
    =
  let __type = "aws_glue_schema" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       compatibility = Prop.computed __type __id "compatibility";
       data_format = Prop.computed __type __id "data_format";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       latest_schema_version =
         Prop.computed __type __id "latest_schema_version";
       next_schema_version =
         Prop.computed __type __id "next_schema_version";
       registry_arn = Prop.computed __type __id "registry_arn";
       registry_name = Prop.computed __type __id "registry_name";
       schema_checkpoint =
         Prop.computed __type __id "schema_checkpoint";
       schema_definition =
         Prop.computed __type __id "schema_definition";
       schema_name = Prop.computed __type __id "schema_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_schema
        (aws_glue_schema ?description ?id ?registry_arn ?tags
           ?tags_all ~compatibility ~data_format ~schema_definition
           ~schema_name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?registry_arn ?tags
    ?tags_all ~compatibility ~data_format ~schema_definition
    ~schema_name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?registry_arn ?tags ?tags_all
      ~compatibility ~data_format ~schema_definition ~schema_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
