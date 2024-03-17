(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_eip__timeouts = {
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_eip__timeouts *)

type aws_eip = {
  address : string option; [@option]  (** address *)
  associate_with_private_ip : string option; [@option]
      (** associate_with_private_ip *)
  customer_owned_ipv4_pool : string option; [@option]
      (** customer_owned_ipv4_pool *)
  domain : string option; [@option]  (** domain *)
  id : string option; [@option]  (** id *)
  instance : string option; [@option]  (** instance *)
  network_border_group : string option; [@option]
      (** network_border_group *)
  network_interface : string option; [@option]
      (** network_interface *)
  public_ipv4_pool : string option; [@option]
      (** public_ipv4_pool *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  vpc : bool option; [@option]  (** vpc *)
  timeouts : aws_eip__timeouts option;
}
[@@deriving yojson_of]
(** aws_eip *)

let aws_eip ?address ?associate_with_private_ip
    ?customer_owned_ipv4_pool ?domain ?id ?instance
    ?network_border_group ?network_interface ?public_ipv4_pool ?tags
    ?tags_all ?vpc ?timeouts __resource_id =
  let __resource_type = "aws_eip" in
  let __resource =
    {
      address;
      associate_with_private_ip;
      customer_owned_ipv4_pool;
      domain;
      id;
      instance;
      network_border_group;
      network_interface;
      public_ipv4_pool;
      tags;
      tags_all;
      vpc;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eip __resource);
  ()
