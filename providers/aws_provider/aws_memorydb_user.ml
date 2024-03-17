(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_memorydb_user__authentication_mode = {
  password_count : float prop;  (** password_count *)
  passwords : string prop list;  (** passwords *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_memorydb_user__authentication_mode *)

type aws_memorydb_user = {
  access_string : string prop;  (** access_string *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_name : string prop;  (** user_name *)
  authentication_mode : aws_memorydb_user__authentication_mode list;
}
[@@deriving yojson_of]
(** aws_memorydb_user *)

let aws_memorydb_user ?id ?tags ?tags_all ~access_string ~user_name
    ~authentication_mode __resource_id =
  let __resource_type = "aws_memorydb_user" in
  let __resource =
    {
      access_string;
      id;
      tags;
      tags_all;
      user_name;
      authentication_mode;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_memorydb_user __resource);
  ()
