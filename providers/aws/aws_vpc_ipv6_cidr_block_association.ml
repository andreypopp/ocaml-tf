(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_ipv6_cidr_block_association = {
  id : string prop option; [@option]  (** id *)
  ipv6_cidr_block : string prop option; [@option]
      (** ipv6_cidr_block *)
  ipv6_ipam_pool_id : string prop;  (** ipv6_ipam_pool_id *)
  ipv6_netmask_length : float prop option; [@option]
      (** ipv6_netmask_length *)
  vpc_id : string prop;  (** vpc_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipv6_cidr_block_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpc_ipv6_cidr_block_association ?id ?ipv6_cidr_block
    ?ipv6_netmask_length ?timeouts ~ipv6_ipam_pool_id ~vpc_id () :
    aws_vpc_ipv6_cidr_block_association =
  {
    id;
    ipv6_cidr_block;
    ipv6_ipam_pool_id;
    ipv6_netmask_length;
    vpc_id;
    timeouts;
  }

type t = {
  id : string prop;
  ipv6_cidr_block : string prop;
  ipv6_ipam_pool_id : string prop;
  ipv6_netmask_length : float prop;
  vpc_id : string prop;
}

let make ?id ?ipv6_cidr_block ?ipv6_netmask_length ?timeouts
    ~ipv6_ipam_pool_id ~vpc_id __id =
  let __type = "aws_vpc_ipv6_cidr_block_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ipv6_cidr_block = Prop.computed __type __id "ipv6_cidr_block";
       ipv6_ipam_pool_id =
         Prop.computed __type __id "ipv6_ipam_pool_id";
       ipv6_netmask_length =
         Prop.computed __type __id "ipv6_netmask_length";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipv6_cidr_block_association
        (aws_vpc_ipv6_cidr_block_association ?id ?ipv6_cidr_block
           ?ipv6_netmask_length ?timeouts ~ipv6_ipam_pool_id ~vpc_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ipv6_cidr_block ?ipv6_netmask_length
    ?timeouts ~ipv6_ipam_pool_id ~vpc_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ipv6_cidr_block ?ipv6_netmask_length ?timeouts
      ~ipv6_ipam_pool_id ~vpc_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
