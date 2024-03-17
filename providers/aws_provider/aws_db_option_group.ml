(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_db_option_group__option__option_settings = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_db_option_group__option__option_settings *)

type aws_db_option_group__option = {
  db_security_group_memberships : string list option; [@option]
      (** db_security_group_memberships *)
  option_name : string;  (** option_name *)
  port : float option; [@option]  (** port *)
  version : string option; [@option]  (** version *)
  vpc_security_group_memberships : string list option; [@option]
      (** vpc_security_group_memberships *)
  option_settings : aws_db_option_group__option__option_settings list;
}
[@@deriving yojson_of]
(** aws_db_option_group__option *)

type aws_db_option_group__timeouts = {
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_db_option_group__timeouts *)

type aws_db_option_group = {
  engine_name : string;  (** engine_name *)
  major_engine_version : string;  (** major_engine_version *)
  option_group_description : string option; [@option]
      (** option_group_description *)
  tags : (string * string) list option; [@option]  (** tags *)
  option : aws_db_option_group__option list;
  timeouts : aws_db_option_group__timeouts option;
}
[@@deriving yojson_of]
(** aws_db_option_group *)

let aws_db_option_group ?option_group_description ?tags ?timeouts
    ~engine_name ~major_engine_version ~option __resource_id =
  let __resource_type = "aws_db_option_group" in
  let __resource =
    {
      engine_name;
      major_engine_version;
      option_group_description;
      tags;
      option;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_db_option_group __resource);
  ()
