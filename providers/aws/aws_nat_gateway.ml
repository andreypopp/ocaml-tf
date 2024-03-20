(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_nat_gateway = {
  allocation_id : string prop option; [@option]  (** allocation_id *)
  connectivity_type : string prop option; [@option]
      (** connectivity_type *)
  id : string prop option; [@option]  (** id *)
  private_ip : string prop option; [@option]  (** private_ip *)
  secondary_allocation_ids : string prop list option; [@option]
      (** secondary_allocation_ids *)
  secondary_private_ip_address_count : float prop option; [@option]
      (** secondary_private_ip_address_count *)
  secondary_private_ip_addresses : string prop list option; [@option]
      (** secondary_private_ip_addresses *)
  subnet_id : string prop;  (** subnet_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_nat_gateway *)

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
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?allocation_id ?connectivity_type ?id ?private_ip
    ?secondary_allocation_ids ?secondary_private_ip_address_count
    ?secondary_private_ip_addresses ?tags ?tags_all ?timeouts
    ~subnet_id __id =
  let __type = "aws_nat_gateway" in
  let __attrs =
    ({
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
