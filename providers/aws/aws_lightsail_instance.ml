(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type add_on = {
  snapshot_time : string prop;  (** snapshot_time *)
  status : string prop;  (** status *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** add_on *)

type aws_lightsail_instance = {
  availability_zone : string prop;  (** availability_zone *)
  blueprint_id : string prop;  (** blueprint_id *)
  bundle_id : string prop;  (** bundle_id *)
  id : string prop option; [@option]  (** id *)
  ip_address_type : string prop option; [@option]
      (** ip_address_type *)
  key_pair_name : string prop option; [@option]  (** key_pair_name *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  user_data : string prop option; [@option]  (** user_data *)
  add_on : add_on list;
}
[@@deriving yojson_of]
(** aws_lightsail_instance *)

let add_on ~snapshot_time ~status ~type_ () : add_on =
  { snapshot_time; status; type_ }

let aws_lightsail_instance ?id ?ip_address_type ?key_pair_name ?tags
    ?tags_all ?user_data ~availability_zone ~blueprint_id ~bundle_id
    ~name ~add_on () : aws_lightsail_instance =
  {
    availability_zone;
    blueprint_id;
    bundle_id;
    id;
    ip_address_type;
    key_pair_name;
    name;
    tags;
    tags_all;
    user_data;
    add_on;
  }

type t = {
  arn : string prop;
  availability_zone : string prop;
  blueprint_id : string prop;
  bundle_id : string prop;
  cpu_count : float prop;
  created_at : string prop;
  id : string prop;
  ip_address_type : string prop;
  ipv6_addresses : string list prop;
  is_static_ip : bool prop;
  key_pair_name : string prop;
  name : string prop;
  private_ip_address : string prop;
  public_ip_address : string prop;
  ram_size : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_data : string prop;
  username : string prop;
}

let make ?id ?ip_address_type ?key_pair_name ?tags ?tags_all
    ?user_data ~availability_zone ~blueprint_id ~bundle_id ~name
    ~add_on __id =
  let __type = "aws_lightsail_instance" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       availability_zone =
         Prop.computed __type __id "availability_zone";
       blueprint_id = Prop.computed __type __id "blueprint_id";
       bundle_id = Prop.computed __type __id "bundle_id";
       cpu_count = Prop.computed __type __id "cpu_count";
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       ipv6_addresses = Prop.computed __type __id "ipv6_addresses";
       is_static_ip = Prop.computed __type __id "is_static_ip";
       key_pair_name = Prop.computed __type __id "key_pair_name";
       name = Prop.computed __type __id "name";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       public_ip_address =
         Prop.computed __type __id "public_ip_address";
       ram_size = Prop.computed __type __id "ram_size";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_data = Prop.computed __type __id "user_data";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_instance
        (aws_lightsail_instance ?id ?ip_address_type ?key_pair_name
           ?tags ?tags_all ?user_data ~availability_zone
           ~blueprint_id ~bundle_id ~name ~add_on ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_address_type ?key_pair_name ?tags
    ?tags_all ?user_data ~availability_zone ~blueprint_id ~bundle_id
    ~name ~add_on __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_address_type ?key_pair_name ?tags ?tags_all
      ?user_data ~availability_zone ~blueprint_id ~bundle_id ~name
      ~add_on __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
