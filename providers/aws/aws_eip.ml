(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?address ?associate_with_private_ip
    ?customer_owned_ipv4_pool ?domain ?id ?instance
    ?network_border_group ?network_interface ?public_ipv4_pool ?tags
    ?tags_all ?vpc ?timeouts __resource_id =
  let __resource_type = "aws_eip" in
  let __resource =
    aws_eip ?address ?associate_with_private_ip
      ?customer_owned_ipv4_pool ?domain ?id ?instance
      ?network_border_group ?network_interface ?public_ipv4_pool
      ?tags ?tags_all ?vpc ?timeouts ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_eip __resource);
  let __resource_attributes =
    ({
       address =
         Prop.computed __resource_type __resource_id "address";
       allocation_id =
         Prop.computed __resource_type __resource_id "allocation_id";
       associate_with_private_ip =
         Prop.computed __resource_type __resource_id
           "associate_with_private_ip";
       association_id =
         Prop.computed __resource_type __resource_id "association_id";
       carrier_ip =
         Prop.computed __resource_type __resource_id "carrier_ip";
       customer_owned_ip =
         Prop.computed __resource_type __resource_id
           "customer_owned_ip";
       customer_owned_ipv4_pool =
         Prop.computed __resource_type __resource_id
           "customer_owned_ipv4_pool";
       domain = Prop.computed __resource_type __resource_id "domain";
       id = Prop.computed __resource_type __resource_id "id";
       instance =
         Prop.computed __resource_type __resource_id "instance";
       network_border_group =
         Prop.computed __resource_type __resource_id
           "network_border_group";
       network_interface =
         Prop.computed __resource_type __resource_id
           "network_interface";
       private_dns =
         Prop.computed __resource_type __resource_id "private_dns";
       private_ip =
         Prop.computed __resource_type __resource_id "private_ip";
       public_dns =
         Prop.computed __resource_type __resource_id "public_dns";
       public_ip =
         Prop.computed __resource_type __resource_id "public_ip";
       public_ipv4_pool =
         Prop.computed __resource_type __resource_id
           "public_ipv4_pool";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vpc = Prop.computed __resource_type __resource_id "vpc";
     }
      : t)
  in
  __resource_attributes
