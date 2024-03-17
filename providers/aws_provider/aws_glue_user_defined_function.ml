(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_user_defined_function__resource_uris = {
  resource_type : string;  (** resource_type *)
  uri : string;  (** uri *)
}
[@@deriving yojson_of]
(** aws_glue_user_defined_function__resource_uris *)

type aws_glue_user_defined_function = {
  catalog_id : string option; [@option]  (** catalog_id *)
  class_name : string;  (** class_name *)
  database_name : string;  (** database_name *)
  name : string;  (** name *)
  owner_name : string;  (** owner_name *)
  owner_type : string;  (** owner_type *)
  resource_uris : aws_glue_user_defined_function__resource_uris list;
}
[@@deriving yojson_of]
(** aws_glue_user_defined_function *)

let aws_glue_user_defined_function ?catalog_id ~class_name
    ~database_name ~name ~owner_name ~owner_type ~resource_uris
    __resource_id =
  let __resource_type = "aws_glue_user_defined_function" in
  let __resource =
    {
      catalog_id;
      class_name;
      database_name;
      name;
      owner_name;
      owner_type;
      resource_uris;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_user_defined_function __resource);
  ()
