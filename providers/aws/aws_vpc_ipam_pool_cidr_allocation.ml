(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?cidr ?description ?disallowed_cidrs ?id ?netmask_length
    ~ipam_pool_id __id =
  let __type = "aws_vpc_ipam_pool_cidr_allocation" in
  let __attrs =
    ({
       cidr = Prop.computed __type __id "cidr";
       description = Prop.computed __type __id "description";
       disallowed_cidrs =
         Prop.computed __type __id "disallowed_cidrs";
       id = Prop.computed __type __id "id";
       ipam_pool_allocation_id =
         Prop.computed __type __id "ipam_pool_allocation_id";
       ipam_pool_id = Prop.computed __type __id "ipam_pool_id";
       netmask_length = Prop.computed __type __id "netmask_length";
       resource_id = Prop.computed __type __id "resource_id";
       resource_owner = Prop.computed __type __id "resource_owner";
       resource_type = Prop.computed __type __id "resource_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_pool_cidr_allocation
        (aws_vpc_ipam_pool_cidr_allocation ?cidr ?description
           ?disallowed_cidrs ?id ?netmask_length ~ipam_pool_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr ?description ?disallowed_cidrs ?id
    ?netmask_length ~ipam_pool_id __id =
  let (r : _ Tf_core.resource) =
    make ?cidr ?description ?disallowed_cidrs ?id ?netmask_length
      ~ipam_pool_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
