(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_security_group_rule__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_security_group_rule__timeouts *)

type aws_security_group_rule = {
  cidr_blocks : string list option; [@option]  (** cidr_blocks *)
  description : string option; [@option]  (** description *)
  from_port : float;  (** from_port *)
  id : string option; [@option]  (** id *)
  ipv6_cidr_blocks : string list option; [@option]
      (** ipv6_cidr_blocks *)
  prefix_list_ids : string list option; [@option]
      (** prefix_list_ids *)
  protocol : string;  (** protocol *)
  security_group_id : string;  (** security_group_id *)
  self : bool option; [@option]  (** self *)
  source_security_group_id : string option; [@option]
      (** source_security_group_id *)
  to_port : float;  (** to_port *)
  type_ : string; [@key "type"]  (** type *)
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
