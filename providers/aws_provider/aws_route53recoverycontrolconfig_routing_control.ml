(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoverycontrolconfig_routing_control = {
  cluster_arn : string;  (** cluster_arn *)
  control_panel_arn : string option; [@option]
      (** control_panel_arn *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_routing_control *)

let aws_route53recoverycontrolconfig_routing_control
    ?control_panel_arn ?id ~cluster_arn ~name __resource_id =
  let __resource_type =
    "aws_route53recoverycontrolconfig_routing_control"
  in
  let __resource = { cluster_arn; control_panel_arn; id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoverycontrolconfig_routing_control
       __resource);
  ()
