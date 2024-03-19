(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type authentication_mode = {
  passwords : string prop list;  (** passwords *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** authentication_mode *)

type aws_memorydb_user = {
  access_string : string prop;  (** access_string *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_name : string prop;  (** user_name *)
  authentication_mode : authentication_mode list;
}
[@@deriving yojson_of]
(** aws_memorydb_user *)

let authentication_mode ~passwords ~type_ () : authentication_mode =
  { passwords; type_ }

let aws_memorydb_user ?id ?tags ?tags_all ~access_string ~user_name
    ~authentication_mode () : aws_memorydb_user =
  {
    access_string;
    id;
    tags;
    tags_all;
    user_name;
    authentication_mode;
  }

type t = {
  access_string : string prop;
  arn : string prop;
  id : string prop;
  minimum_engine_version : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
}

let register ?tf_module ?id ?tags ?tags_all ~access_string ~user_name
    ~authentication_mode __resource_id =
  let __resource_type = "aws_memorydb_user" in
  let __resource =
    aws_memorydb_user ?id ?tags ?tags_all ~access_string ~user_name
      ~authentication_mode ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_memorydb_user __resource);
  let __resource_attributes =
    ({
       access_string =
         Prop.computed __resource_type __resource_id "access_string";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       minimum_engine_version =
         Prop.computed __resource_type __resource_id
           "minimum_engine_version";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes
