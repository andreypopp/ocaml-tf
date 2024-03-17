(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_db_option_group__option__option_settings = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_db_option_group__option__option_settings *)

type aws_db_option_group__option = {
  db_security_group_memberships : string prop list option; [@option]
      (** db_security_group_memberships *)
  option_name : string prop;  (** option_name *)
  port : float prop option; [@option]  (** port *)
  version : string prop option; [@option]  (** version *)
  vpc_security_group_memberships : string prop list option; [@option]
      (** vpc_security_group_memberships *)
  option_settings : aws_db_option_group__option__option_settings list;
}
[@@deriving yojson_of]
(** aws_db_option_group__option *)

type aws_db_option_group__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_db_option_group__timeouts *)

type aws_db_option_group = {
  engine_name : string prop;  (** engine_name *)
  id : string prop option; [@option]  (** id *)
  major_engine_version : string prop;  (** major_engine_version *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  option_group_description : string prop option; [@option]
      (** option_group_description *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  option : aws_db_option_group__option list;
  timeouts : aws_db_option_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_option_group *)

type t = {
  arn : string prop;
  engine_name : string prop;
  id : string prop;
  major_engine_version : string prop;
  name : string prop;
  name_prefix : string prop;
  option_group_description : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_db_option_group ?id ?name ?name_prefix
    ?option_group_description ?tags ?tags_all ?timeouts ~engine_name
    ~major_engine_version ~option __resource_id =
  let __resource_type = "aws_db_option_group" in
  let __resource =
    ({
       engine_name;
       id;
       major_engine_version;
       name;
       name_prefix;
       option_group_description;
       tags;
       tags_all;
       option;
       timeouts;
     }
      : aws_db_option_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_option_group __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       engine_name =
         Prop.computed __resource_type __resource_id "engine_name";
       id = Prop.computed __resource_type __resource_id "id";
       major_engine_version =
         Prop.computed __resource_type __resource_id
           "major_engine_version";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       option_group_description =
         Prop.computed __resource_type __resource_id
           "option_group_description";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
