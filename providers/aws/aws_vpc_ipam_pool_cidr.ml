(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?cidr ?id ?netmask_length ?timeouts ~ipam_pool_id
    ~cidr_authorization_context __id =
  let __type = "aws_vpc_ipam_pool_cidr" in
  let __attrs =
    ({
       cidr = Prop.computed __type __id "cidr";
       id = Prop.computed __type __id "id";
       ipam_pool_cidr_id =
         Prop.computed __type __id "ipam_pool_cidr_id";
       ipam_pool_id = Prop.computed __type __id "ipam_pool_id";
       netmask_length = Prop.computed __type __id "netmask_length";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_pool_cidr
        (aws_vpc_ipam_pool_cidr ?cidr ?id ?netmask_length ?timeouts
           ~ipam_pool_id ~cidr_authorization_context ());
    attrs = __attrs;
  }

let register ?tf_module ?cidr ?id ?netmask_length ?timeouts
    ~ipam_pool_id ~cidr_authorization_context __id =
  let (r : _ Tf_core.resource) =
    make ?cidr ?id ?netmask_length ?timeouts ~ipam_pool_id
      ~cidr_authorization_context __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
