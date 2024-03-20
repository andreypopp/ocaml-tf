(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?gateway_load_balancer_endpoint_id ?id
    ?network_interface_id ?network_load_balancer_arn ?tags ?tags_all
    __id =
  let __type = "aws_ec2_traffic_mirror_target" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       gateway_load_balancer_endpoint_id =
         Prop.computed __type __id
           "gateway_load_balancer_endpoint_id";
       id = Prop.computed __type __id "id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       network_load_balancer_arn =
         Prop.computed __type __id "network_load_balancer_arn";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_traffic_mirror_target
        (aws_ec2_traffic_mirror_target ?description
           ?gateway_load_balancer_endpoint_id ?id
           ?network_interface_id ?network_load_balancer_arn ?tags
           ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?description
    ?gateway_load_balancer_endpoint_id ?id ?network_interface_id
    ?network_load_balancer_arn ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?description ?gateway_load_balancer_endpoint_id ?id
      ?network_interface_id ?network_load_balancer_arn ?tags
      ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
