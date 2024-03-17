(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3outposts_endpoint__network_interfaces = {
  network_interface_id : string prop;  (** network_interface_id *)
}
[@@deriving yojson_of]

type aws_s3outposts_endpoint = {
  access_type : string prop option; [@option]  (** access_type *)
  customer_owned_ipv4_pool : string prop option; [@option]
      (** customer_owned_ipv4_pool *)
  id : string prop option; [@option]  (** id *)
  outpost_id : string prop;  (** outpost_id *)
  security_group_id : string prop;  (** security_group_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_s3outposts_endpoint *)

let aws_s3outposts_endpoint ?access_type ?customer_owned_ipv4_pool
    ?id ~outpost_id ~security_group_id ~subnet_id __resource_id =
  let __resource_type = "aws_s3outposts_endpoint" in
  let __resource =
    {
      access_type;
      customer_owned_ipv4_pool;
      id;
      outpost_id;
      security_group_id;
      subnet_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3outposts_endpoint __resource);
  ()
