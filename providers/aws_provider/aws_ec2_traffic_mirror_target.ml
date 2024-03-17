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
    ?network_load_balancer_arn ?tags ?tags_all __resource_id =
  let __resource_type = "aws_ec2_traffic_mirror_target" in
  let __resource =
    {
      description;
      gateway_load_balancer_endpoint_id;
      id;
      network_interface_id;
      network_load_balancer_arn;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_traffic_mirror_target __resource);
  ()
