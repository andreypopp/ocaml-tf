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

type aws_docdbelastic_cluster = {
  admin_user_name : string prop;
  admin_user_password : string prop;
  auth_type : string prop;
  kms_key_id : string prop option; [@option]
  name : string prop;
  preferred_maintenance_window : string prop option; [@option]
  shard_capacity : float prop;
  shard_count : float prop;
  subnet_ids : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  vpc_security_group_ids : string prop list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_docdbelastic_cluster) -> ()

let yojson_of_aws_docdbelastic_cluster =
  (function
   | {
       admin_user_name = v_admin_user_name;
       admin_user_password = v_admin_user_password;
       auth_type = v_auth_type;
       kms_key_id = v_kms_key_id;
       name = v_name;
       preferred_maintenance_window = v_preferred_maintenance_window;
       shard_capacity = v_shard_capacity;
       shard_count = v_shard_count;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       vpc_security_group_ids = v_vpc_security_group_ids;
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
         match v_vpc_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "vpc_security_group_ids", arg in
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
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "subnet_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_shard_count in
         ("shard_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_shard_capacity in
         ("shard_capacity", arg) :: bnds
       in
       let bnds =
         match v_preferred_maintenance_window with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_maintenance_window", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_auth_type in
         ("auth_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_user_password
         in
         ("admin_user_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_user_name
         in
         ("admin_user_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_docdbelastic_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_docdbelastic_cluster

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_docdbelastic_cluster ?kms_key_id
    ?preferred_maintenance_window ?subnet_ids ?tags
    ?vpc_security_group_ids ?timeouts ~admin_user_name
    ~admin_user_password ~auth_type ~name ~shard_capacity
    ~shard_count () : aws_docdbelastic_cluster =
  {
    admin_user_name;
    admin_user_password;
    auth_type;
    kms_key_id;
    name;
    preferred_maintenance_window;
    shard_capacity;
    shard_count;
    subnet_ids;
    tags;
    vpc_security_group_ids;
    timeouts;
  }

type t = {
  admin_user_name : string prop;
  admin_user_password : string prop;
  arn : string prop;
  auth_type : string prop;
  endpoint : string prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  preferred_maintenance_window : string prop;
  shard_capacity : float prop;
  shard_count : float prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_security_group_ids : string list prop;
}

let make ?kms_key_id ?preferred_maintenance_window ?subnet_ids ?tags
    ?vpc_security_group_ids ?timeouts ~admin_user_name
    ~admin_user_password ~auth_type ~name ~shard_capacity
    ~shard_count __id =
  let __type = "aws_docdbelastic_cluster" in
  let __attrs =
    ({
       admin_user_name = Prop.computed __type __id "admin_user_name";
       admin_user_password =
         Prop.computed __type __id "admin_user_password";
       arn = Prop.computed __type __id "arn";
       auth_type = Prop.computed __type __id "auth_type";
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       preferred_maintenance_window =
         Prop.computed __type __id "preferred_maintenance_window";
       shard_capacity = Prop.computed __type __id "shard_capacity";
       shard_count = Prop.computed __type __id "shard_count";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_security_group_ids =
         Prop.computed __type __id "vpc_security_group_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_docdbelastic_cluster
        (aws_docdbelastic_cluster ?kms_key_id
           ?preferred_maintenance_window ?subnet_ids ?tags
           ?vpc_security_group_ids ?timeouts ~admin_user_name
           ~admin_user_password ~auth_type ~name ~shard_capacity
           ~shard_count ());
    attrs = __attrs;
  }

let register ?tf_module ?kms_key_id ?preferred_maintenance_window
    ?subnet_ids ?tags ?vpc_security_group_ids ?timeouts
    ~admin_user_name ~admin_user_password ~auth_type ~name
    ~shard_capacity ~shard_count __id =
  let (r : _ Tf_core.resource) =
    make ?kms_key_id ?preferred_maintenance_window ?subnet_ids ?tags
      ?vpc_security_group_ids ?timeouts ~admin_user_name
      ~admin_user_password ~auth_type ~name ~shard_capacity
      ~shard_count __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
