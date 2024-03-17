(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ec2_traffic_mirror_filter_rule__destination_port_range = {
  from_port : float option; [@option]  (** from_port *)
  to_port : float option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** aws_ec2_traffic_mirror_filter_rule__destination_port_range *)

type aws_ec2_traffic_mirror_filter_rule__source_port_range = {
  from_port : float option; [@option]  (** from_port *)
  to_port : float option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** aws_ec2_traffic_mirror_filter_rule__source_port_range *)

type aws_ec2_traffic_mirror_filter_rule = {
  description : string option; [@option]  (** description *)
  destination_cidr_block : string;  (** destination_cidr_block *)
  id : string option; [@option]  (** id *)
  protocol : float option; [@option]  (** protocol *)
  rule_action : string;  (** rule_action *)
  rule_number : float;  (** rule_number *)
  source_cidr_block : string;  (** source_cidr_block *)
  traffic_direction : string;  (** traffic_direction *)
  traffic_mirror_filter_id : string;  (** traffic_mirror_filter_id *)
  destination_port_range :
    aws_ec2_traffic_mirror_filter_rule__destination_port_range list;
  source_port_range :
    aws_ec2_traffic_mirror_filter_rule__source_port_range list;
}
[@@deriving yojson_of]
(** aws_ec2_traffic_mirror_filter_rule *)

let aws_ec2_traffic_mirror_filter_rule ?description ?id ?protocol
    ~destination_cidr_block ~rule_action ~rule_number
    ~source_cidr_block ~traffic_direction ~traffic_mirror_filter_id
    ~destination_port_range ~source_port_range __resource_id =
  let __resource_type = "aws_ec2_traffic_mirror_filter_rule" in
  let __resource =
    {
      description;
      destination_cidr_block;
      id;
      protocol;
      rule_action;
      rule_number;
      source_cidr_block;
      traffic_direction;
      traffic_mirror_filter_id;
      destination_port_range;
      source_port_range;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_traffic_mirror_filter_rule __resource);
  ()
