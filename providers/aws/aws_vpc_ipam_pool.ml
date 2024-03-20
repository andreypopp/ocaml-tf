(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpc_ipam_pool = {
  address_family : string prop;  (** address_family *)
  allocation_default_netmask_length : float prop option; [@option]
      (** allocation_default_netmask_length *)
  allocation_max_netmask_length : float prop option; [@option]
      (** allocation_max_netmask_length *)
  allocation_min_netmask_length : float prop option; [@option]
      (** allocation_min_netmask_length *)
  allocation_resource_tags : (string * string prop) list option;
      [@option]
      (** allocation_resource_tags *)
  auto_import : bool prop option; [@option]  (** auto_import *)
  aws_service : string prop option; [@option]  (** aws_service *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  ipam_scope_id : string prop;  (** ipam_scope_id *)
  locale : string prop option; [@option]  (** locale *)
  public_ip_source : string prop option; [@option]
      (** public_ip_source *)
  publicly_advertisable : bool prop option; [@option]
      (** publicly_advertisable *)
  source_ipam_pool_id : string prop option; [@option]
      (** source_ipam_pool_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpc_ipam_pool *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpc_ipam_pool ?allocation_default_netmask_length
    ?allocation_max_netmask_length ?allocation_min_netmask_length
    ?allocation_resource_tags ?auto_import ?aws_service ?description
    ?id ?locale ?public_ip_source ?publicly_advertisable
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
  address_family : string prop;
  allocation_default_netmask_length : float prop;
  allocation_max_netmask_length : float prop;
  allocation_min_netmask_length : float prop;
  allocation_resource_tags : (string * string) list prop;
  arn : string prop;
  auto_import : bool prop;
  aws_service : string prop;
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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?allocation_default_netmask_length
    ?allocation_max_netmask_length ?allocation_min_netmask_length
    ?allocation_resource_tags ?auto_import ?aws_service ?description
    ?id ?locale ?public_ip_source ?publicly_advertisable
    ?source_ipam_pool_id ?tags ?tags_all ?timeouts ~address_family
    ~ipam_scope_id __id =
  let __type = "aws_vpc_ipam_pool" in
  let __attrs =
    ({
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
           ?auto_import ?aws_service ?description ?id ?locale
           ?public_ip_source ?publicly_advertisable
           ?source_ipam_pool_id ?tags ?tags_all ?timeouts
           ~address_family ~ipam_scope_id ());
    attrs = __attrs;
  }

let register ?tf_module ?allocation_default_netmask_length
    ?allocation_max_netmask_length ?allocation_min_netmask_length
    ?allocation_resource_tags ?auto_import ?aws_service ?description
    ?id ?locale ?public_ip_source ?publicly_advertisable
    ?source_ipam_pool_id ?tags ?tags_all ?timeouts ~address_family
    ~ipam_scope_id __id =
  let (r : _ Tf_core.resource) =
    make ?allocation_default_netmask_length
      ?allocation_max_netmask_length ?allocation_min_netmask_length
      ?allocation_resource_tags ?auto_import ?aws_service
      ?description ?id ?locale ?public_ip_source
      ?publicly_advertisable ?source_ipam_pool_id ?tags ?tags_all
      ?timeouts ~address_family ~ipam_scope_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
