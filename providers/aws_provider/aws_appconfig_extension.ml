(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appconfig_extension__action_point__action = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  role_arn : string;  (** role_arn *)
  uri : string;  (** uri *)
}
[@@deriving yojson_of]
(** aws_appconfig_extension__action_point__action *)

type aws_appconfig_extension__action_point = {
  point : string;  (** point *)
  action : aws_appconfig_extension__action_point__action list;
}
[@@deriving yojson_of]
(** aws_appconfig_extension__action_point *)

type aws_appconfig_extension__parameter = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  required : bool option; [@option]  (** required *)
}
[@@deriving yojson_of]
(** aws_appconfig_extension__parameter *)

type aws_appconfig_extension = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
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
