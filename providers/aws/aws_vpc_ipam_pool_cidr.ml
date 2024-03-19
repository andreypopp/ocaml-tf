(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cidr_authorization_context = {
  message : string prop option; [@option]  (** message *)
  signature : string prop option; [@option]  (** signature *)
}
[@@deriving yojson_of]
(** cidr_authorization_context *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_ipam_pool_cidr = {
  cidr : string prop option; [@option]  (** cidr *)
  id : string prop option; [@option]  (** id *)
  ipam_pool_id : string prop;  (** ipam_pool_id *)
  netmask_length : float prop option; [@option]
      (** netmask_length *)
  cidr_authorization_context : cidr_authorization_context list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool_cidr *)

let cidr_authorization_context ?message ?signature () :
    cidr_authorization_context =
  { message; signature }

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpc_ipam_pool_cidr ?cidr ?id ?netmask_length ?timeouts
    ~ipam_pool_id ~cidr_authorization_context () :
    aws_vpc_ipam_pool_cidr =
  {
    cidr;
    id;
    ipam_pool_id;
    netmask_length;
    cidr_authorization_context;
    timeouts;
  }

type t = {
  cidr : string prop;
  id : string prop;
  ipam_pool_cidr_id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
}

let register ?tf_module ?cidr ?id ?netmask_length ?timeouts
    ~ipam_pool_id ~cidr_authorization_context __resource_id =
  let __resource_type = "aws_vpc_ipam_pool_cidr" in
  let __resource =
    aws_vpc_ipam_pool_cidr ?cidr ?id ?netmask_length ?timeouts
      ~ipam_pool_id ~cidr_authorization_context ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_pool_cidr __resource);
  let __resource_attributes =
    ({
       cidr = Prop.computed __resource_type __resource_id "cidr";
       id = Prop.computed __resource_type __resource_id "id";
       ipam_pool_cidr_id =
         Prop.computed __resource_type __resource_id
           "ipam_pool_cidr_id";
       ipam_pool_id =
         Prop.computed __resource_type __resource_id "ipam_pool_id";
       netmask_length =
         Prop.computed __resource_type __resource_id "netmask_length";
     }
      : t)
  in
  __resource_attributes
