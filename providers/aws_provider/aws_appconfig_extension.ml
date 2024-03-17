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

let aws_appconfig_extension ?description ?id ?tags ?tags_all ~name
    ~action_point ~parameter __resource_id =
  let __resource_type = "aws_appconfig_extension" in
  let __resource =
    {
      description;
      id;
      name;
      tags;
      tags_all;
      action_point;
      parameter;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appconfig_extension __resource);
  ()
