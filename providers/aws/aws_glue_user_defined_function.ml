(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type resource_uris = {
  resource_type : string prop;  (** resource_type *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** resource_uris *)

type aws_glue_user_defined_function = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  class_name : string prop;  (** class_name *)
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner_name : string prop;  (** owner_name *)
  owner_type : string prop;  (** owner_type *)
  resource_uris : resource_uris list;
}
[@@deriving yojson_of]
(** aws_glue_user_defined_function *)

let resource_uris ~resource_type ~uri () : resource_uris =
  { resource_type; uri }

let aws_glue_user_defined_function ?catalog_id ?id ~class_name
    ~database_name ~name ~owner_name ~owner_type ~resource_uris () :
    aws_glue_user_defined_function =
  {
    catalog_id;
    class_name;
    database_name;
    id;
    name;
    owner_name;
    owner_type;
    resource_uris;
  }

type t = {
  arn : string prop;
  catalog_id : string prop;
  class_name : string prop;
  create_time : string prop;
  database_name : string prop;
  id : string prop;
  name : string prop;
  owner_name : string prop;
  owner_type : string prop;
}

let register ?tf_module ?catalog_id ?id ~class_name ~database_name
    ~name ~owner_name ~owner_type ~resource_uris __resource_id =
  let __resource_type = "aws_glue_user_defined_function" in
  let __resource =
    aws_glue_user_defined_function ?catalog_id ?id ~class_name
      ~database_name ~name ~owner_name ~owner_type ~resource_uris ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_user_defined_function __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       catalog_id =
         Prop.computed __resource_type __resource_id "catalog_id";
       class_name =
         Prop.computed __resource_type __resource_id "class_name";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       database_name =
         Prop.computed __resource_type __resource_id "database_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       owner_name =
         Prop.computed __resource_type __resource_id "owner_name";
       owner_type =
         Prop.computed __resource_type __resource_id "owner_type";
     }
      : t)
  in
  __resource_attributes
