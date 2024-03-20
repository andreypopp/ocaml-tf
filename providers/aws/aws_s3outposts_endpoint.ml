(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type network_interfaces = {
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
    ?id ~outpost_id ~security_group_id ~subnet_id () :
    aws_s3outposts_endpoint =
  {
    access_type;
    customer_owned_ipv4_pool;
    id;
    outpost_id;
    security_group_id;
    subnet_id;
  }

type t = {
  access_type : string prop;
  arn : string prop;
  cidr_block : string prop;
  creation_time : string prop;
  customer_owned_ipv4_pool : string prop;
  id : string prop;
  network_interfaces : network_interfaces list prop;
  outpost_id : string prop;
  security_group_id : string prop;
  subnet_id : string prop;
}

let make ?access_type ?customer_owned_ipv4_pool ?id ~outpost_id
    ~security_group_id ~subnet_id __id =
  let __type = "aws_s3outposts_endpoint" in
  let __attrs =
    ({
       access_type = Prop.computed __type __id "access_type";
       arn = Prop.computed __type __id "arn";
       cidr_block = Prop.computed __type __id "cidr_block";
       creation_time = Prop.computed __type __id "creation_time";
       customer_owned_ipv4_pool =
         Prop.computed __type __id "customer_owned_ipv4_pool";
       id = Prop.computed __type __id "id";
       network_interfaces =
         Prop.computed __type __id "network_interfaces";
       outpost_id = Prop.computed __type __id "outpost_id";
       security_group_id =
         Prop.computed __type __id "security_group_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3outposts_endpoint
        (aws_s3outposts_endpoint ?access_type
           ?customer_owned_ipv4_pool ?id ~outpost_id
           ~security_group_id ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?access_type ?customer_owned_ipv4_pool ?id
    ~outpost_id ~security_group_id ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?access_type ?customer_owned_ipv4_pool ?id ~outpost_id
      ~security_group_id ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
