(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoverycontrolconfig_routing_control = {
  cluster_arn : string;  (** cluster_arn *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_routing_control *)

let aws_route53recoverycontrolconfig_routing_control ~cluster_arn
    ~name __resource_id =
  let __resource_type =
    "aws_route53recoverycontrolconfig_routing_control"
  in
  let __resource = { cluster_arn; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoverycontrolconfig_routing_control
       __resource);
  ()
