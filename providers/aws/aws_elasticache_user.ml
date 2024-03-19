(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type authentication_mode = {
  passwords : string prop list option; [@option]  (** passwords *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** authentication_mode *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_elasticache_user = {
  access_string : string prop;  (** access_string *)
  engine : string prop;  (** engine *)
  id : string prop option; [@option]  (** id *)
  no_password_required : bool prop option; [@option]
      (** no_password_required *)
  passwords : string prop list option; [@option]  (** passwords *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_id : string prop;  (** user_id *)
  user_name : string prop;  (** user_name *)
  authentication_mode : authentication_mode list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_elasticache_user *)

let authentication_mode ?passwords ~type_ () : authentication_mode =
  { passwords; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_elasticache_user ?id ?no_password_required ?passwords ?tags
    ?tags_all ?timeouts ~access_string ~engine ~user_id ~user_name
    ~authentication_mode () : aws_elasticache_user =
  {
    access_string;
    engine;
    id;
    no_password_required;
    passwords;
    tags;
    tags_all;
    user_id;
    user_name;
    authentication_mode;
    timeouts;
  }

type t = {
  access_string : string prop;
  arn : string prop;
  engine : string prop;
  id : string prop;
  no_password_required : bool prop;
  passwords : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_id : string prop;
  user_name : string prop;
}

let register ?tf_module ?id ?no_password_required ?passwords ?tags
    ?tags_all ?timeouts ~access_string ~engine ~user_id ~user_name
    ~authentication_mode __resource_id =
  let __resource_type = "aws_elasticache_user" in
  let __resource =
    aws_elasticache_user ?id ?no_password_required ?passwords ?tags
      ?tags_all ?timeouts ~access_string ~engine ~user_id ~user_name
      ~authentication_mode ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elasticache_user __resource);
  let __resource_attributes =
    ({
       access_string =
         Prop.computed __resource_type __resource_id "access_string";
       arn = Prop.computed __resource_type __resource_id "arn";
       engine = Prop.computed __resource_type __resource_id "engine";
       id = Prop.computed __resource_type __resource_id "id";
       no_password_required =
         Prop.computed __resource_type __resource_id
           "no_password_required";
       passwords =
         Prop.computed __resource_type __resource_id "passwords";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes
