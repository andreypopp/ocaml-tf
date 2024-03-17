(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_security_group_egress_rule = {
  cidr_ipv4 : string prop option; [@option]  (** cidr_ipv4 *)
  cidr_ipv6 : string prop option; [@option]  (** cidr_ipv6 *)
  description : string prop option; [@option]  (** description *)
  from_port : float prop option; [@option]  (** from_port *)
  ip_protocol : string prop;  (** ip_protocol *)
  prefix_list_id : string prop option; [@option]
      (** prefix_list_id *)
  referenced_security_group_id : string prop option; [@option]
      (** referenced_security_group_id *)
  security_group_id : string prop;  (** security_group_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  to_port : float prop option; [@option]  (** to_port *)
}
[@@deriving yojson_of]
(** aws_vpc_security_group_egress_rule *)

let aws_vpc_security_group_egress_rule ?cidr_ipv4 ?cidr_ipv6
    ?description ?from_port ?prefix_list_id
    ?referenced_security_group_id ?tags ?to_port ~ip_protocol
    ~security_group_id __resource_id =
  let __resource_type = "aws_vpc_security_group_egress_rule" in
  let __resource =
    {
      cidr_ipv4;
      cidr_ipv6;
      description;
      from_port;
      ip_protocol;
      prefix_list_id;
      referenced_security_group_id;
      security_group_id;
      tags;
      to_port;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_security_group_egress_rule __resource);
  ()
