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

type t = {
  arn : string prop;
  content : string prop;
  description : string prop;
  id : string prop;
  last_modified : string prop;
  name : string prop;
  registry_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  version : string prop;
  version_created_date : string prop;
}

let aws_schemas_schema ?description ?id ?tags ?tags_all ~content
    ~name ~registry_name ~type_ __resource_id =
  let __resource_type = "aws_schemas_schema" in
  let __resource =
    ({
       content;
       description;
       id;
       name;
       registry_name;
       tags;
       tags_all;
       type_;
     }
      : aws_schemas_schema)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_schemas_schema __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       content =
         Prop.computed __resource_type __resource_id "content";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified =
         Prop.computed __resource_type __resource_id "last_modified";
       name = Prop.computed __resource_type __resource_id "name";
       registry_name =
         Prop.computed __resource_type __resource_id "registry_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       type_ = Prop.computed __resource_type __resource_id "type";
       version =
         Prop.computed __resource_type __resource_id "version";
       version_created_date =
         Prop.computed __resource_type __resource_id
           "version_created_date";
     }
      : t)
  in
  __resource_attributes
