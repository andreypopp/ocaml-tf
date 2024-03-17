(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_user_defined_function__resource_uris = {
  resource_type : string prop;  (** resource_type *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** aws_glue_user_defined_function__resource_uris *)

type aws_glue_user_defined_function = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  class_name : string prop;  (** class_name *)
  database_name : string prop;  (** database_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner_name : string prop;  (** owner_name *)
  owner_type : string prop;  (** owner_type *)
  resource_uris : aws_glue_user_defined_function__resource_uris list;
}
[@@deriving yojson_of]
(** aws_glue_user_defined_function *)

let aws_glue_user_defined_function ?catalog_id ?id ~class_name
    ~database_name ~name ~owner_name ~owner_type ~resource_uris
    __resource_id =
  let __resource_type = "aws_glue_user_defined_function" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_user_defined_function __resource);
  ()
