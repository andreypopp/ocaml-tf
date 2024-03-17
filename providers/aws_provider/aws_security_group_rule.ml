(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_security_group_rule__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_security_group_rule__timeouts *)

type aws_security_group_rule = {
  cidr_blocks : string prop list option; [@option]
      (** cidr_blocks *)
  description : string prop option; [@option]  (** description *)
  from_port : float prop;  (** from_port *)
  id : string prop option; [@option]  (** id *)
  ipv6_cidr_blocks : string prop list option; [@option]
      (** ipv6_cidr_blocks *)
  prefix_list_ids : string prop list option; [@option]
      (** prefix_list_ids *)
  protocol : string prop;  (** protocol *)
  security_group_id : string prop;  (** security_group_id *)
  self : bool prop option; [@option]  (** self *)
  source_security_group_id : string prop option; [@option]
      (** source_security_group_id *)
  to_port : float prop;  (** to_port *)
  type_ : string prop; [@key "type"]  (** type *)
  timeouts : aws_security_group_rule__timeouts option;
}
[@@deriving yojson_of]
(** aws_security_group_rule *)

let aws_security_group_rule ?cidr_blocks ?description ?id
    ?ipv6_cidr_blocks ?prefix_list_ids ?self
    ?source_security_group_id ?timeouts ~from_port ~protocol
    ~security_group_id ~to_port ~type_ __resource_id =
  let __resource_type = "aws_security_group_rule" in
  let __resource =
    {
      cidr_blocks;
      description;
      from_port;
      id;
      ipv6_cidr_blocks;
      prefix_list_ids;
      protocol;
      security_group_id;
      self;
      source_security_group_id;
      to_port;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_security_group_rule __resource);
  ()
