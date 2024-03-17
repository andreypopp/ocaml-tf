(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_elasticache_user__authentication_mode = {
  password_count : float;  (** password_count *)
  passwords : string list option; [@option]  (** passwords *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_elasticache_user__authentication_mode *)

type aws_elasticache_user__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_elasticache_user__timeouts *)

type aws_elasticache_user = {
  access_string : string;  (** access_string *)
  engine : string;  (** engine *)
  no_password_required : bool option; [@option]
      (** no_password_required *)
  passwords : string list option; [@option]  (** passwords *)
  tags : (string * string) list option; [@option]  (** tags *)
  user_id : string;  (** user_id *)
  user_name : string;  (** user_name *)
  authentication_mode :
    aws_elasticache_user__authentication_mode list;
  timeouts : aws_elasticache_user__timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_user *)

let aws_elasticache_user ?no_password_required ?passwords ?tags
    ?timeouts ~access_string ~engine ~user_id ~user_name
    ~authentication_mode __resource_id =
  let __resource_type = "aws_elasticache_user" in
  let __resource =
    {
      access_string;
      engine;
      no_password_required;
      passwords;
      tags;
      user_id;
      user_name;
      authentication_mode;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_user __resource);
  ()
