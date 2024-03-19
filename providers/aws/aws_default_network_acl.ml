(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type egress = {
  action : string prop;  (** action *)
  cidr_block : string prop option; [@option]  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop option; [@option]  (** icmp_code *)
  icmp_type : float prop option; [@option]  (** icmp_type *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]
(** egress *)

type ingress = {
  action : string prop;  (** action *)
  cidr_block : string prop option; [@option]  (** cidr_block *)
  from_port : float prop;  (** from_port *)
  icmp_code : float prop option; [@option]  (** icmp_code *)
  icmp_type : float prop option; [@option]  (** icmp_type *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  protocol : string prop;  (** protocol *)
  rule_no : float prop;  (** rule_no *)
  to_port : float prop;  (** to_port *)
}
[@@deriving yojson_of]
(** ingress *)

type aws_default_network_acl = {
  default_network_acl_id : string prop;
      (** default_network_acl_id *)
  id : string prop option; [@option]  (** id *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  egress : egress list;
  ingress : ingress list;
}
[@@deriving yojson_of]
(** aws_default_network_acl *)

let egress ?cidr_block ?icmp_code ?icmp_type ?ipv6_cidr_block ~action
    ~from_port ~protocol ~rule_no ~to_port () : egress =
  {
    action;
    cidr_block;
    from_port;
    icmp_code;
    icmp_type;
    ipv6_cidr_block;
    protocol;
    rule_no;
    to_port;
  }

let ingress ?cidr_block ?icmp_code ?icmp_type ?ipv6_cidr_block
    ~action ~from_port ~protocol ~rule_no ~to_port () : ingress =
  {
    action;
    cidr_block;
    from_port;
    icmp_code;
    icmp_type;
    ipv6_cidr_block;
    protocol;
    rule_no;
    to_port;
  }

let aws_default_network_acl ?id ?subnet_ids ?tags ?tags_all
    ~default_network_acl_id ~egress ~ingress () :
    aws_default_network_acl =
  {
    default_network_acl_id;
    id;
    subnet_ids;
    tags;
    tags_all;
    egress;
    ingress;
  }

type t = {
  arn : string prop;
  default_network_acl_id : string prop;
  id : string prop;
  owner_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let register ?tf_module ?id ?subnet_ids ?tags ?tags_all
    ~default_network_acl_id ~egress ~ingress __resource_id =
  let __resource_type = "aws_default_network_acl" in
  let __resource =
    aws_default_network_acl ?id ?subnet_ids ?tags ?tags_all
      ~default_network_acl_id ~egress ~ingress ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_default_network_acl __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       default_network_acl_id =
         Prop.computed __resource_type __resource_id
           "default_network_acl_id";
       id = Prop.computed __resource_type __resource_id "id";
       owner_id =
         Prop.computed __resource_type __resource_id "owner_id";
       subnet_ids =
         Prop.computed __resource_type __resource_id "subnet_ids";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc_id = Prop.computed __resource_type __resource_id "vpc_id";
     }
      : t)
  in
  __resource_attributes
