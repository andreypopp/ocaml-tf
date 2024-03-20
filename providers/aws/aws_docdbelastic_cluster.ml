(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_docdbelastic_cluster = {
  admin_user_name : string prop;  (** admin_user_name *)
  admin_user_password : string prop;  (** admin_user_password *)
  auth_type : string prop;  (** auth_type *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  preferred_maintenance_window : string prop option; [@option]
      (** preferred_maintenance_window *)
  shard_capacity : float prop;  (** shard_capacity *)
  shard_count : float prop;  (** shard_count *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  vpc_security_group_ids : string prop list option; [@option]
      (** vpc_security_group_ids *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_docdbelastic_cluster *)

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
