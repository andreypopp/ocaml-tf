(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

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
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_eip__timeouts option;
}
[@@deriving yojson_of]
(** aws_eip *)

let aws_eip ?address ?associate_with_private_ip
    ?customer_owned_ipv4_pool ?tags ?timeouts __resource_id =
  let __resource_type = "aws_eip" in
  let __resource =
    {
      address;
      associate_with_private_ip;
      customer_owned_ipv4_pool;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eip __resource);
  ()
