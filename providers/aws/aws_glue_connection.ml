(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?catalog_id ?connection_properties
    ?connection_type ?description ?id ?match_criteria ?tags ?tags_all
    ~name ~physical_connection_requirements __resource_id =
  let __resource_type = "aws_glue_connection" in
  let __resource =
    aws_glue_connection ?catalog_id ?connection_properties
      ?connection_type ?description ?id ?match_criteria ?tags
      ?tags_all ~name ~physical_connection_requirements ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       catalog_id =
         Prop.computed __resource_type __resource_id "catalog_id";
       connection_properties =
         Prop.computed __resource_type __resource_id
           "connection_properties";
       connection_type =
         Prop.computed __resource_type __resource_id
           "connection_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       match_criteria =
         Prop.computed __resource_type __resource_id "match_criteria";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
