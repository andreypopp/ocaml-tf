(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type destination_port_range = {
  from_port : float prop option; [@option]  (** from_port *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** destination_port_range *)

type source_port_range = {
  from_port : float prop option; [@option]  (** from_port *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** source_port_range *)

type aws_ec2_traffic_mirror_filter_rule = {
  description : string prop option; [@option]  (** description *)
  destination_cidr_block : string prop;
      (** destination_cidr_block *)
  id : string prop option; [@option]  (** id *)
  protocol : float prop option; [@option]  (** protocol *)
  rule_action : string prop;  (** rule_action *)
  rule_number : float prop;  (** rule_number *)
  source_cidr_block : string prop;  (** source_cidr_block *)
  traffic_direction : string prop;  (** traffic_direction *)
  traffic_mirror_filter_id : string prop;
      (** traffic_mirror_filter_id *)
  destination_port_range : destination_port_range list;
  source_port_range : source_port_range list;
}
[@@deriving yojson_of]
(** aws_ec2_traffic_mirror_filter_rule *)

let destination_port_range ?from_port ?to_port () :
    destination_port_range =
  { from_port; to_port }

let source_port_range ?from_port ?to_port () : source_port_range =
  { from_port; to_port }

let aws_ec2_traffic_mirror_filter_rule ?description ?id ?protocol
    ~destination_cidr_block ~rule_action ~rule_number
    ~source_cidr_block ~traffic_direction ~traffic_mirror_filter_id
    ~destination_port_range ~source_port_range () :
    aws_ec2_traffic_mirror_filter_rule =
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

type t = {
  arn : string prop;
  description : string prop;
  destination_cidr_block : string prop;
  id : string prop;
  protocol : float prop;
  rule_action : string prop;
  rule_number : float prop;
  source_cidr_block : string prop;
  traffic_direction : string prop;
  traffic_mirror_filter_id : string prop;
}

let register ?tf_module ?description ?id ?protocol
    ~destination_cidr_block ~rule_action ~rule_number
    ~source_cidr_block ~traffic_direction ~traffic_mirror_filter_id
    ~destination_port_range ~source_port_range __resource_id =
  let __resource_type = "aws_ec2_traffic_mirror_filter_rule" in
  let __resource =
    aws_ec2_traffic_mirror_filter_rule ?description ?id ?protocol
      ~destination_cidr_block ~rule_action ~rule_number
      ~source_cidr_block ~traffic_direction ~traffic_mirror_filter_id
      ~destination_port_range ~source_port_range ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ec2_traffic_mirror_filter_rule __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       destination_cidr_block =
         Prop.computed __resource_type __resource_id
           "destination_cidr_block";
       id = Prop.computed __resource_type __resource_id "id";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       rule_action =
         Prop.computed __resource_type __resource_id "rule_action";
       rule_number =
         Prop.computed __resource_type __resource_id "rule_number";
       source_cidr_block =
         Prop.computed __resource_type __resource_id
           "source_cidr_block";
       traffic_direction =
         Prop.computed __resource_type __resource_id
           "traffic_direction";
       traffic_mirror_filter_id =
         Prop.computed __resource_type __resource_id
           "traffic_mirror_filter_id";
     }
      : t)
  in
  __resource_attributes
