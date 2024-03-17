(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_prometheus_rule_group_namespace = {
  data : string;  (** data *)
  name : string;  (** name *)
  workspace_id : string;  (** workspace_id *)
}
[@@deriving yojson_of]
(** aws_prometheus_rule_group_namespace *)

let aws_prometheus_rule_group_namespace ~data ~name ~workspace_id
    __resource_id =
  let __resource_type = "aws_prometheus_rule_group_namespace" in
  let __resource = { data; name; workspace_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_prometheus_rule_group_namespace __resource);
  ()
