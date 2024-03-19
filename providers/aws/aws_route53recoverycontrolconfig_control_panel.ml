(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53recoverycontrolconfig_control_panel = {
  cluster_arn : string prop;  (** cluster_arn *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_route53recoverycontrolconfig_control_panel *)

let aws_route53recoverycontrolconfig_control_panel ?id ~cluster_arn
    ~name () : aws_route53recoverycontrolconfig_control_panel =
  { cluster_arn; id; name }

type t = {
  arn : string prop;
  cluster_arn : string prop;
  default_control_panel : bool prop;
  id : string prop;
  name : string prop;
  routing_control_count : float prop;
  status : string prop;
}

let register ?tf_module ?id ~cluster_arn ~name __resource_id =
  let __resource_type =
    "aws_route53recoverycontrolconfig_control_panel"
  in
  let __resource =
    aws_route53recoverycontrolconfig_control_panel ?id ~cluster_arn
      ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53recoverycontrolconfig_control_panel
       __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       cluster_arn =
         Prop.computed __resource_type __resource_id "cluster_arn";
       default_control_panel =
         Prop.computed __resource_type __resource_id
           "default_control_panel";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       routing_control_count =
         Prop.computed __resource_type __resource_id
           "routing_control_count";
       status = Prop.computed __resource_type __resource_id "status";
     }
      : t)
  in
  __resource_attributes
