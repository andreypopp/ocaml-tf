(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_vpc_ipam_pool_cidr_allocation = {
  cidr : string prop option; [@option]  (** cidr *)
  description : string prop option; [@option]  (** description *)
  disallowed_cidrs : string prop list option; [@option]
      (** disallowed_cidrs *)
  id : string prop option; [@option]  (** id *)
  ipam_pool_id : string prop;  (** ipam_pool_id *)
  netmask_length : float prop option; [@option]  (** netmask_length *)
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool_cidr_allocation *)

let aws_vpc_ipam_pool_cidr_allocation ?cidr ?description
    ?disallowed_cidrs ?id ?netmask_length ~ipam_pool_id () :
    aws_vpc_ipam_pool_cidr_allocation =
  {
    cidr;
    description;
    disallowed_cidrs;
    id;
    ipam_pool_id;
    netmask_length;
  }

type t = {
  cidr : string prop;
  description : string prop;
  disallowed_cidrs : string list prop;
  id : string prop;
  ipam_pool_allocation_id : string prop;
  ipam_pool_id : string prop;
  netmask_length : float prop;
  resource_id : string prop;
  resource_owner : string prop;
  resource_type : string prop;
}

let register ?tf_module ?cidr ?description ?disallowed_cidrs ?id
    ?netmask_length ~ipam_pool_id __resource_id =
  let __resource_type = "aws_vpc_ipam_pool_cidr_allocation" in
  let __resource =
    aws_vpc_ipam_pool_cidr_allocation ?cidr ?description
      ?disallowed_cidrs ?id ?netmask_length ~ipam_pool_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_vpc_ipam_pool_cidr_allocation __resource);
  let __resource_attributes =
    ({
       cidr = Prop.computed __resource_type __resource_id "cidr";
       description =
         Prop.computed __resource_type __resource_id "description";
       disallowed_cidrs =
         Prop.computed __resource_type __resource_id
           "disallowed_cidrs";
       id = Prop.computed __resource_type __resource_id "id";
       ipam_pool_allocation_id =
         Prop.computed __resource_type __resource_id
           "ipam_pool_allocation_id";
       ipam_pool_id =
         Prop.computed __resource_type __resource_id "ipam_pool_id";
       netmask_length =
         Prop.computed __resource_type __resource_id "netmask_length";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
       resource_owner =
         Prop.computed __resource_type __resource_id "resource_owner";
       resource_type =
         Prop.computed __resource_type __resource_id "resource_type";
     }
      : t)
  in
  __resource_attributes
