(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_memorydb_acl = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_names : string prop list option; [@option]  (** user_names *)
}
[@@deriving yojson_of]
(** aws_memorydb_acl *)

let aws_memorydb_acl ?id ?name ?name_prefix ?tags ?tags_all
    ?user_names () : aws_memorydb_acl =
  { id; name; name_prefix; tags; tags_all; user_names }

type t = {
  arn : string prop;
  id : string prop;
  minimum_engine_version : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_names : string list prop;
}

let register ?tf_module ?id ?name ?name_prefix ?tags ?tags_all
    ?user_names __resource_id =
  let __resource_type = "aws_memorydb_acl" in
  let __resource =
    aws_memorydb_acl ?id ?name ?name_prefix ?tags ?tags_all
      ?user_names ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_memorydb_acl __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       minimum_engine_version =
         Prop.computed __resource_type __resource_id
           "minimum_engine_version";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       user_names =
         Prop.computed __resource_type __resource_id "user_names";
     }
      : t)
  in
  __resource_attributes
