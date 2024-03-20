(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_eip = {
  address : string prop option; [@option]  (** address *)
  associate_with_private_ip : string prop option; [@option]
      (** associate_with_private_ip *)
  customer_owned_ipv4_pool : string prop option; [@option]
      (** customer_owned_ipv4_pool *)
  domain : string prop option; [@option]  (** domain *)
  id : string prop option; [@option]  (** id *)
  instance : string prop option; [@option]  (** instance *)
  network_border_group : string prop option; [@option]
      (** network_border_group *)
  network_interface : string prop option; [@option]
      (** network_interface *)
  public_ipv4_pool : string prop option; [@option]
      (** public_ipv4_pool *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc : bool prop option; [@option]  (** vpc *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_eip *)

let timeouts ?delete ?read ?update () : timeouts =
  { delete; read; update }

let aws_eip ?address ?associate_with_private_ip
    ?customer_owned_ipv4_pool ?domain ?id ?instance
    ?network_border_group ?network_interface ?public_ipv4_pool ?tags
    ?tags_all ?vpc ?timeouts () : aws_eip =
  {
    address;
    associate_with_private_ip;
    customer_owned_ipv4_pool;
    domain;
    id;
    instance;
    network_border_group;
    network_interface;
    public_ipv4_pool;
    tags;
    tags_all;
    vpc;
    timeouts;
  }

type t = {
  address : string prop;
  allocation_id : string prop;
  associate_with_private_ip : string prop;
  association_id : string prop;
  carrier_ip : string prop;
  customer_owned_ip : string prop;
  customer_owned_ipv4_pool : string prop;
  domain : string prop;
  id : string prop;
  instance : string prop;
  network_border_group : string prop;
  network_interface : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  public_ipv4_pool : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc : bool prop;
}

let make ?address ?associate_with_private_ip
    ?customer_owned_ipv4_pool ?domain ?id ?instance
    ?network_border_group ?network_interface ?public_ipv4_pool ?tags
    ?tags_all ?vpc ?timeouts __id =
  let __type = "aws_eip" in
  let __attrs =
    ({
       address = Prop.computed __type __id "address";
       allocation_id = Prop.computed __type __id "allocation_id";
       associate_with_private_ip =
         Prop.computed __type __id "associate_with_private_ip";
       association_id = Prop.computed __type __id "association_id";
       carrier_ip = Prop.computed __type __id "carrier_ip";
       customer_owned_ip =
         Prop.computed __type __id "customer_owned_ip";
       customer_owned_ipv4_pool =
         Prop.computed __type __id "customer_owned_ipv4_pool";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       instance = Prop.computed __type __id "instance";
       network_border_group =
         Prop.computed __type __id "network_border_group";
       network_interface =
         Prop.computed __type __id "network_interface";
       private_dns = Prop.computed __type __id "private_dns";
       private_ip = Prop.computed __type __id "private_ip";
       public_dns = Prop.computed __type __id "public_dns";
       public_ip = Prop.computed __type __id "public_ip";
       public_ipv4_pool =
         Prop.computed __type __id "public_ipv4_pool";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc = Prop.computed __type __id "vpc";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eip
        (aws_eip ?address ?associate_with_private_ip
           ?customer_owned_ipv4_pool ?domain ?id ?instance
           ?network_border_group ?network_interface ?public_ipv4_pool
           ?tags ?tags_all ?vpc ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?address ?associate_with_private_ip
    ?customer_owned_ipv4_pool ?domain ?id ?instance
    ?network_border_group ?network_interface ?public_ipv4_pool ?tags
    ?tags_all ?vpc ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?address ?associate_with_private_ip
      ?customer_owned_ipv4_pool ?domain ?id ?instance
      ?network_border_group ?network_interface ?public_ipv4_pool
      ?tags ?tags_all ?vpc ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
