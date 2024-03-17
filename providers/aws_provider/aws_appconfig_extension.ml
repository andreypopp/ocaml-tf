(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_extension__action_point__action = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  role_arn : string prop;  (** role_arn *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** aws_appconfig_extension__action_point__action *)

type aws_appconfig_extension__action_point = {
  point : string prop;  (** point *)
  action : aws_appconfig_extension__action_point__action list;
}
[@@deriving yojson_of]
(** aws_appconfig_extension__action_point *)

type aws_appconfig_extension__parameter = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  required : bool prop option; [@option]  (** required *)
}
[@@deriving yojson_of]
(** aws_appconfig_extension__parameter *)

type aws_appconfig_extension = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  action_point : aws_appconfig_extension__action_point list;
  parameter : aws_appconfig_extension__parameter list;
}
[@@deriving yojson_of]
(** aws_appconfig_extension *)

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : float prop;
}

let aws_appconfig_extension ?description ?id ?tags ?tags_all ~name
    ~action_point ~parameter __resource_id =
  let __resource_type = "aws_appconfig_extension" in
  let __resource =
    ({
       description;
       id;
       name;
       tags;
       tags_all;
       action_point;
       parameter;
     }
      : aws_appconfig_extension)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_extension __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
