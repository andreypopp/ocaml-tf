(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_s3outposts_endpoint__network_interfaces = {
  network_interface_id : string;  (** network_interface_id *)
}
[@@deriving yojson_of]

type aws_s3outposts_endpoint = {
  customer_owned_ipv4_pool : string option; [@option]
      (** customer_owned_ipv4_pool *)
  outpost_id : string;  (** outpost_id *)
  security_group_id : string;  (** security_group_id *)
  subnet_id : string;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_s3outposts_endpoint *)

let aws_s3outposts_endpoint ?customer_owned_ipv4_pool ~outpost_id
    ~security_group_id ~subnet_id __resource_id =
  let __resource_type = "aws_s3outposts_endpoint" in
  let __resource =
    {
      customer_owned_ipv4_pool;
      outpost_id;
      security_group_id;
      subnet_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3outposts_endpoint __resource);
  ()
