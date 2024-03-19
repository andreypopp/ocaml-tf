(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_traffic_mirror_target = {
  description : string prop option; [@option]  (** description *)
  gateway_load_balancer_endpoint_id : string prop option; [@option]
      (** gateway_load_balancer_endpoint_id *)
  id : string prop option; [@option]  (** id *)
  network_interface_id : string prop option; [@option]
      (** network_interface_id *)
  network_load_balancer_arn : string prop option; [@option]
      (** network_load_balancer_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ec2_traffic_mirror_target *)

let aws_ec2_traffic_mirror_target ?description
    ?gateway_load_balancer_endpoint_id ?id ?network_interface_id
    ?network_load_balancer_arn ?tags ?tags_all () :
    aws_ec2_traffic_mirror_target =
  {
    description;
    gateway_load_balancer_endpoint_id;
    id;
    network_interface_id;
    network_load_balancer_arn;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  description : string prop;
  gateway_load_balancer_endpoint_id : string prop;
  id : string prop;
  network_interface_id : string prop;
  network_load_balancer_arn : string prop;
  owner_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description
    ?gateway_load_balancer_endpoint_id ?id ?network_interface_id
    ?network_load_balancer_arn ?tags ?tags_all __resource_id =
  let __resource_type = "aws_ec2_traffic_mirror_target" in
  let __resource =
    aws_ec2_traffic_mirror_target ?description
      ?gateway_load_balancer_endpoint_id ?id ?network_interface_id
      ?network_load_balancer_arn ?tags ?tags_all ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_traffic_mirror_target __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       gateway_load_balancer_endpoint_id =
         Prop.computed __resource_type __resource_id
           "gateway_load_balancer_endpoint_id";
       id = Prop.computed __resource_type __resource_id "id";
       network_interface_id =
         Prop.computed __resource_type __resource_id
           "network_interface_id";
       network_load_balancer_arn =
         Prop.computed __resource_type __resource_id
           "network_load_balancer_arn";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
