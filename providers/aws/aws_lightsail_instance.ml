(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type add_on = {
  snapshot_time : string prop;
  status : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : add_on) -> ()

let yojson_of_add_on =
  (function
   | {
       snapshot_time = v_snapshot_time;
       status = v_status;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_snapshot_time in
         ("snapshot_time", arg) :: bnds
       in
       `Assoc bnds
    : add_on -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_add_on

[@@@deriving.end]

type aws_lightsail_instance = {
  availability_zone : string prop;
  blueprint_id : string prop;
  bundle_id : string prop;
  id : string prop option; [@option]
  ip_address_type : string prop option; [@option]
  key_pair_name : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  user_data : string prop option; [@option]
  add_on : add_on list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lightsail_instance) -> ()

let yojson_of_aws_lightsail_instance =
  (function
   | {
       availability_zone = v_availability_zone;
       blueprint_id = v_blueprint_id;
       bundle_id = v_bundle_id;
       id = v_id;
       ip_address_type = v_ip_address_type;
       key_pair_name = v_key_pair_name;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       user_data = v_user_data;
       add_on = v_add_on;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_add_on then bnds
         else
           let arg = (yojson_of_list yojson_of_add_on) v_add_on in
           let bnd = "add_on", arg in
           bnd :: bnds
       in
       let bnds =
         match v_user_data with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_data", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_key_pair_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_pair_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_address_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ip_address_type", arg in
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
         let arg = yojson_of_prop yojson_of_string v_bundle_id in
         ("bundle_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_blueprint_id in
         ("blueprint_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_availability_zone
         in
         ("availability_zone", arg) :: bnds
       in
       `Assoc bnds
    : aws_lightsail_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lightsail_instance

[@@@deriving.end]

let add_on ~snapshot_time ~status ~type_ () : add_on =
  { snapshot_time; status; type_ }

let aws_lightsail_instance ?id ?ip_address_type ?key_pair_name ?tags
    ?tags_all ?user_data ?(add_on = []) ~availability_zone
    ~blueprint_id ~bundle_id ~name () : aws_lightsail_instance =
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
  tf_name : string;
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
    ?user_data ?(add_on = []) ~availability_zone ~blueprint_id
    ~bundle_id ~name __id =
  let __type = "aws_lightsail_instance" in
  let __attrs =
    ({
       tf_name = __id;
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
           ?tags ?tags_all ?user_data ~add_on ~availability_zone
           ~blueprint_id ~bundle_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_address_type ?key_pair_name ?tags
    ?tags_all ?user_data ?(add_on = []) ~availability_zone
    ~blueprint_id ~bundle_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_address_type ?key_pair_name ?tags ?tags_all
      ?user_data ~add_on ~availability_zone ~blueprint_id ~bundle_id
      ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
