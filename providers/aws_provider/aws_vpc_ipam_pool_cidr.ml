(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam_pool_cidr__cidr_authorization_context = {
  message : string option; [@option]  (** message *)
  signature : string option; [@option]  (** signature *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool_cidr__cidr_authorization_context *)

type aws_vpc_ipam_pool_cidr__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool_cidr__timeouts *)

type aws_vpc_ipam_pool_cidr = {
  cidr : string option; [@option]  (** cidr *)
  id : string option; [@option]  (** id *)
  ipam_pool_id : string;  (** ipam_pool_id *)
  netmask_length : float option; [@option]  (** netmask_length *)
  cidr_authorization_context :
    aws_vpc_ipam_pool_cidr__cidr_authorization_context list;
  timeouts : aws_vpc_ipam_pool_cidr__timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool_cidr *)

let aws_vpc_ipam_pool_cidr ?cidr ?id ?netmask_length ?timeouts
    ~ipam_pool_id ~cidr_authorization_context __resource_id =
  let __resource_type = "aws_vpc_ipam_pool_cidr" in
  let __resource =
    {
      cidr;
      id;
      ipam_pool_id;
      netmask_length;
      cidr_authorization_context;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_pool_cidr __resource);
  ()
