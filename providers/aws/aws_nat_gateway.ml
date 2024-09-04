(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_nat_gateway = {
  allocation_id : string prop option; [@option]
  connectivity_type : string prop option; [@option]
  id : string prop option; [@option]
  private_ip : string prop option; [@option]
  secondary_allocation_ids : string prop list option; [@option]
  secondary_private_ip_address_count : float prop option; [@option]
  secondary_private_ip_addresses : string prop list option; [@option]
  subnet_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_nat_gateway) -> ()

let yojson_of_aws_nat_gateway =
  (function
   | {
       allocation_id = v_allocation_id;
       connectivity_type = v_connectivity_type;
       id = v_id;
       private_ip = v_private_ip;
       secondary_allocation_ids = v_secondary_allocation_ids;
       secondary_private_ip_address_count =
         v_secondary_private_ip_address_count;
       secondary_private_ip_addresses =
         v_secondary_private_ip_addresses;
       subnet_id = v_subnet_id;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         match v_secondary_private_ip_addresses with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "secondary_private_ip_addresses", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secondary_private_ip_address_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "secondary_private_ip_address_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_secondary_allocation_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "secondary_allocation_ids", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_ip", arg in
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
         match v_connectivity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "connectivity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "allocation_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_nat_gateway -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_nat_gateway

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_nat_gateway ?allocation_id ?connectivity_type ?id ?private_ip
    ?secondary_allocation_ids ?secondary_private_ip_address_count
    ?secondary_private_ip_addresses ?tags ?tags_all ?timeouts
    ~subnet_id () : aws_nat_gateway =
  {
    allocation_id;
    connectivity_type;
    id;
    private_ip;
    secondary_allocation_ids;
    secondary_private_ip_address_count;
    secondary_private_ip_addresses;
    subnet_id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  allocation_id : string prop;
  association_id : string prop;
  connectivity_type : string prop;
  id : string prop;
  network_interface_id : string prop;
  private_ip : string prop;
  public_ip : string prop;
  secondary_allocation_ids : string list prop;
  secondary_private_ip_address_count : float prop;
  secondary_private_ip_addresses : string list prop;
  subnet_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?allocation_id ?connectivity_type ?id ?private_ip
    ?secondary_allocation_ids ?secondary_private_ip_address_count
    ?secondary_private_ip_addresses ?tags ?tags_all ?timeouts
    ~subnet_id __id =
  let __type = "aws_nat_gateway" in
  let __attrs =
    ({
       tf_name = __id;
       allocation_id = Prop.computed __type __id "allocation_id";
       association_id = Prop.computed __type __id "association_id";
       connectivity_type =
         Prop.computed __type __id "connectivity_type";
       id = Prop.computed __type __id "id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       private_ip = Prop.computed __type __id "private_ip";
       public_ip = Prop.computed __type __id "public_ip";
       secondary_allocation_ids =
         Prop.computed __type __id "secondary_allocation_ids";
       secondary_private_ip_address_count =
         Prop.computed __type __id
           "secondary_private_ip_address_count";
       secondary_private_ip_addresses =
         Prop.computed __type __id "secondary_private_ip_addresses";
       subnet_id = Prop.computed __type __id "subnet_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_nat_gateway
        (aws_nat_gateway ?allocation_id ?connectivity_type ?id
           ?private_ip ?secondary_allocation_ids
           ?secondary_private_ip_address_count
           ?secondary_private_ip_addresses ?tags ?tags_all ?timeouts
           ~subnet_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_id ?connectivity_type ?id
    ?private_ip ?secondary_allocation_ids
    ?secondary_private_ip_address_count
    ?secondary_private_ip_addresses ?tags ?tags_all ?timeouts
    ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?allocation_id ?connectivity_type ?id ?private_ip
      ?secondary_allocation_ids ?secondary_private_ip_address_count
      ?secondary_private_ip_addresses ?tags ?tags_all ?timeouts
      ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
