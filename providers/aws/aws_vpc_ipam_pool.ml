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

type aws_vpc_ipam_pool = {
  address_family : string prop;
  allocation_default_netmask_length : float prop option; [@option]
  allocation_max_netmask_length : float prop option; [@option]
  allocation_min_netmask_length : float prop option; [@option]
  allocation_resource_tags : string prop Tf_core.assoc option;
      [@option]
  auto_import : bool prop option; [@option]
  aws_service : string prop option; [@option]
  cascade : bool prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  ipam_scope_id : string prop;
  locale : string prop option; [@option]
  public_ip_source : string prop option; [@option]
  publicly_advertisable : bool prop option; [@option]
  source_ipam_pool_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_ipam_pool) -> ()

let yojson_of_aws_vpc_ipam_pool =
  (function
   | {
       address_family = v_address_family;
       allocation_default_netmask_length =
         v_allocation_default_netmask_length;
       allocation_max_netmask_length =
         v_allocation_max_netmask_length;
       allocation_min_netmask_length =
         v_allocation_min_netmask_length;
       allocation_resource_tags = v_allocation_resource_tags;
       auto_import = v_auto_import;
       aws_service = v_aws_service;
       cascade = v_cascade;
       description = v_description;
       id = v_id;
       ipam_scope_id = v_ipam_scope_id;
       locale = v_locale;
       public_ip_source = v_public_ip_source;
       publicly_advertisable = v_publicly_advertisable;
       source_ipam_pool_id = v_source_ipam_pool_id;
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
         match v_source_ipam_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_ipam_pool_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_publicly_advertisable with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "publicly_advertisable", arg in
             bnd :: bnds
       in
       let bnds =
         match v_public_ip_source with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip_source", arg in
             bnd :: bnds
       in
       let bnds =
         match v_locale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locale", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipam_scope_id in
         ("ipam_scope_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cascade with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cascade", arg in
             bnd :: bnds
       in
       let bnds =
         match v_aws_service with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_service", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_import with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_import", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_resource_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "allocation_resource_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_min_netmask_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "allocation_min_netmask_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_max_netmask_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "allocation_max_netmask_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allocation_default_netmask_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "allocation_default_netmask_length", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_address_family
         in
         ("address_family", arg) :: bnds
       in
       `Assoc bnds
    : aws_vpc_ipam_pool -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_ipam_pool

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_ipam_pool ?allocation_default_netmask_length
    ?allocation_max_netmask_length ?allocation_min_netmask_length
    ?allocation_resource_tags ?auto_import ?aws_service ?cascade
    ?description ?id ?locale ?public_ip_source ?publicly_advertisable
    ?source_ipam_pool_id ?tags ?tags_all ?timeouts ~address_family
    ~ipam_scope_id () : aws_vpc_ipam_pool =
  {
    address_family;
    allocation_default_netmask_length;
    allocation_max_netmask_length;
    allocation_min_netmask_length;
    allocation_resource_tags;
    auto_import;
    aws_service;
    cascade;
    description;
    id;
    ipam_scope_id;
    locale;
    public_ip_source;
    publicly_advertisable;
    source_ipam_pool_id;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  address_family : string prop;
  allocation_default_netmask_length : float prop;
  allocation_max_netmask_length : float prop;
  allocation_min_netmask_length : float prop;
  allocation_resource_tags : string Tf_core.assoc prop;
  arn : string prop;
  auto_import : bool prop;
  aws_service : string prop;
  cascade : bool prop;
  description : string prop;
  id : string prop;
  ipam_scope_id : string prop;
  ipam_scope_type : string prop;
  locale : string prop;
  pool_depth : float prop;
  public_ip_source : string prop;
  publicly_advertisable : bool prop;
  source_ipam_pool_id : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?allocation_default_netmask_length
    ?allocation_max_netmask_length ?allocation_min_netmask_length
    ?allocation_resource_tags ?auto_import ?aws_service ?cascade
    ?description ?id ?locale ?public_ip_source ?publicly_advertisable
    ?source_ipam_pool_id ?tags ?tags_all ?timeouts ~address_family
    ~ipam_scope_id __id =
  let __type = "aws_vpc_ipam_pool" in
  let __attrs =
    ({
       tf_name = __id;
       address_family = Prop.computed __type __id "address_family";
       allocation_default_netmask_length =
         Prop.computed __type __id
           "allocation_default_netmask_length";
       allocation_max_netmask_length =
         Prop.computed __type __id "allocation_max_netmask_length";
       allocation_min_netmask_length =
         Prop.computed __type __id "allocation_min_netmask_length";
       allocation_resource_tags =
         Prop.computed __type __id "allocation_resource_tags";
       arn = Prop.computed __type __id "arn";
       auto_import = Prop.computed __type __id "auto_import";
       aws_service = Prop.computed __type __id "aws_service";
       cascade = Prop.computed __type __id "cascade";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       ipam_scope_id = Prop.computed __type __id "ipam_scope_id";
       ipam_scope_type = Prop.computed __type __id "ipam_scope_type";
       locale = Prop.computed __type __id "locale";
       pool_depth = Prop.computed __type __id "pool_depth";
       public_ip_source =
         Prop.computed __type __id "public_ip_source";
       publicly_advertisable =
         Prop.computed __type __id "publicly_advertisable";
       source_ipam_pool_id =
         Prop.computed __type __id "source_ipam_pool_id";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_ipam_pool
        (aws_vpc_ipam_pool ?allocation_default_netmask_length
           ?allocation_max_netmask_length
           ?allocation_min_netmask_length ?allocation_resource_tags
           ?auto_import ?aws_service ?cascade ?description ?id
           ?locale ?public_ip_source ?publicly_advertisable
           ?source_ipam_pool_id ?tags ?tags_all ?timeouts
           ~address_family ~ipam_scope_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_default_netmask_length
    ?allocation_max_netmask_length ?allocation_min_netmask_length
    ?allocation_resource_tags ?auto_import ?aws_service ?cascade
    ?description ?id ?locale ?public_ip_source ?publicly_advertisable
    ?source_ipam_pool_id ?tags ?tags_all ?timeouts ~address_family
    ~ipam_scope_id __id =
  let (r : _ Tf_core.resource) =
    make ?allocation_default_netmask_length
      ?allocation_max_netmask_length ?allocation_min_netmask_length
      ?allocation_resource_tags ?auto_import ?aws_service ?cascade
      ?description ?id ?locale ?public_ip_source
      ?publicly_advertisable ?source_ipam_pool_id ?tags ?tags_all
      ?timeouts ~address_family ~ipam_scope_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
