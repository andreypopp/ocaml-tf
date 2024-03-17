(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoverycontrolconfig_routing_control = {
  cluster_arn : string prop;  (** cluster_arn *)
  control_panel_arn : string prop option; [@option]
      (** control_panel_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_routing_control *)

type t = {
  arn : string prop;
  cluster_arn : string prop;
  control_panel_arn : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
}

let aws_route53recoverycontrolconfig_routing_control
    ?control_panel_arn ?id ~cluster_arn ~name __resource_id =
  let __resource_type =
    "aws_route53recoverycontrolconfig_routing_control"
  in
  let __resource =
    ({ cluster_arn; control_panel_arn; id; name }
      : aws_route53recoverycontrolconfig_routing_control)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoverycontrolconfig_routing_control
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cluster_arn =
         Prop.computed __resource_type __resource_id "cluster_arn";
       control_panel_arn =
         Prop.computed __resource_type __resource_id
           "control_panel_arn";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
