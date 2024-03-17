(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_xray_group__insights_configuration = {
  insights_enabled : bool;  (** insights_enabled *)
  notifications_enabled : bool option; [@option]
      (** notifications_enabled *)
}
[@@deriving yojson_of]
(** aws_xray_group__insights_configuration *)

type aws_xray_group = {
  filter_expression : string;  (** filter_expression *)
  group_name : string;  (** group_name *)
  id : string option; [@option]  (** id *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  insights_configuration :
    aws_xray_group__insights_configuration list;
}
[@@deriving yojson_of]
(** aws_xray_group *)

let aws_xray_group ?id ?tags ?tags_all ~filter_expression ~group_name
    ~insights_configuration __resource_id =
  let __resource_type = "aws_xray_group" in
  let __resource =
    {
      filter_expression;
      group_name;
      id;
      tags;
      tags_all;
      insights_configuration;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_xray_group __resource);
  ()
