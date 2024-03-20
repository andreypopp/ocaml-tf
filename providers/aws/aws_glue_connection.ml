(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type physical_connection_requirements = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  security_group_id_list : string prop list option; [@option]
      (** security_group_id_list *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** physical_connection_requirements *)

type aws_glue_connection = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  connection_properties : (string * string prop) list option;
      [@option]
      (** connection_properties *)
  connection_type : string prop option; [@option]
      (** connection_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  match_criteria : string prop list option; [@option]
      (** match_criteria *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  physical_connection_requirements :
    physical_connection_requirements list;
}
[@@deriving yojson_of]
(** aws_glue_connection *)

let physical_connection_requirements ?availability_zone
    ?security_group_id_list ?subnet_id () :
    physical_connection_requirements =
  { availability_zone; security_group_id_list; subnet_id }

let aws_glue_connection ?catalog_id ?connection_properties
    ?connection_type ?description ?id ?match_criteria ?tags ?tags_all
    ~name ~physical_connection_requirements () : aws_glue_connection
    =
  {
    catalog_id;
    connection_properties;
    connection_type;
    description;
    id;
    match_criteria;
    name;
    tags;
    tags_all;
    physical_connection_requirements;
  }

type t = {
  arn : string prop;
  catalog_id : string prop;
  connection_properties : (string * string) list prop;
  connection_type : string prop;
  description : string prop;
  id : string prop;
  match_criteria : string list prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?catalog_id ?connection_properties ?connection_type
    ?description ?id ?match_criteria ?tags ?tags_all ~name
    ~physical_connection_requirements __id =
  let __type = "aws_glue_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       catalog_id = Prop.computed __type __id "catalog_id";
       connection_properties =
         Prop.computed __type __id "connection_properties";
       connection_type = Prop.computed __type __id "connection_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       match_criteria = Prop.computed __type __id "match_criteria";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_connection
        (aws_glue_connection ?catalog_id ?connection_properties
           ?connection_type ?description ?id ?match_criteria ?tags
           ?tags_all ~name ~physical_connection_requirements ());
    attrs = __attrs;
  }

let register ?tf_module ?catalog_id ?connection_properties
    ?connection_type ?description ?id ?match_criteria ?tags ?tags_all
    ~name ~physical_connection_requirements __id =
  let (r : _ Tf_core.resource) =
    make ?catalog_id ?connection_properties ?connection_type
      ?description ?id ?match_criteria ?tags ?tags_all ~name
      ~physical_connection_requirements __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
