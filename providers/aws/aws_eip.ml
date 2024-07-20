(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete; read = v_read; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_eip = {
  address : string prop option; [@option]
  associate_with_private_ip : string prop option; [@option]
  customer_owned_ipv4_pool : string prop option; [@option]
  domain : string prop option; [@option]
  id : string prop option; [@option]
  instance : string prop option; [@option]
  network_border_group : string prop option; [@option]
  network_interface : string prop option; [@option]
  public_ipv4_pool : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  vpc : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eip) -> ()

let yojson_of_aws_eip =
  (function
   | {
       address = v_address;
       associate_with_private_ip = v_associate_with_private_ip;
       customer_owned_ipv4_pool = v_customer_owned_ipv4_pool;
       domain = v_domain;
       id = v_id;
       instance = v_instance;
       network_border_group = v_network_border_group;
       network_interface = v_network_interface;
       public_ipv4_pool = v_public_ipv4_pool;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc = v_vpc;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_vpc with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "vpc", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ipv4_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ipv4_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_interface with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_interface", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_border_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "network_border_group", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_domain with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "domain", arg in
             bnd :: bnds
       in
       let bnds =
         match v_customer_owned_ipv4_pool with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_owned_ipv4_pool", arg in
             bnd :: bnds
       in
       let bnds =
         match v_associate_with_private_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "associate_with_private_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_eip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eip

[@@@deriving.end]

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
  tf_name : string;
  address : string prop;
  allocation_id : string prop;
  arn : string prop;
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
  ptr_record : string prop;
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
       tf_name = __id;
       address = Prop.computed __type __id "address";
       allocation_id = Prop.computed __type __id "allocation_id";
       arn = Prop.computed __type __id "arn";
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
       ptr_record = Prop.computed __type __id "ptr_record";
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
