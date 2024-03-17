(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoverycontrolconfig_cluster__cluster_endpoints = {
  endpoint : string;  (** endpoint *)
  region : string;  (** region *)
}
[@@deriving yojson_of]

type aws_route53recoverycontrolconfig_cluster = {
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_cluster *)

let aws_route53recoverycontrolconfig_cluster ~name __resource_id =
  let __resource_type = "aws_route53recoverycontrolconfig_cluster" in
  let __resource = { name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoverycontrolconfig_cluster __resource);
  ()
