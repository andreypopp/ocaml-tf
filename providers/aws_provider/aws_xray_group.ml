(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

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
  tags : (string * string) list option; [@option]  (** tags *)
  insights_configuration :
    aws_xray_group__insights_configuration list;
}
[@@deriving yojson_of]
(** aws_xray_group *)

let aws_xray_group ?tags ~filter_expression ~group_name
    ~insights_configuration __resource_id =
  let __resource_type = "aws_xray_group" in
  let __resource =
    { filter_expression; group_name; tags; insights_configuration }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_xray_group __resource);
  ()
