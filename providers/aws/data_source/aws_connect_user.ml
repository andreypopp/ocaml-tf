(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity_info = {
  email : string prop;
  first_name : string prop;
  last_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity_info) -> ()

let yojson_of_identity_info =
  (function
   | {
       email = v_email;
       first_name = v_first_name;
       last_name = v_last_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_name in
         ("last_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first_name in
         ("first_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       `Assoc bnds
    : identity_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity_info

[@@@deriving.end]

type phone_config = {
  after_contact_work_time_limit : float prop;
  auto_accept : bool prop;
  desk_phone_number : string prop;
  phone_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : phone_config) -> ()

let yojson_of_phone_config =
  (function
   | {
       after_contact_work_time_limit =
         v_after_contact_work_time_limit;
       auto_accept = v_auto_accept;
       desk_phone_number = v_desk_phone_number;
       phone_type = v_phone_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_type in
         ("phone_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_desk_phone_number
         in
         ("desk_phone_number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_auto_accept in
         ("auto_accept", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_after_contact_work_time_limit
         in
         ("after_contact_work_time_limit", arg) :: bnds
       in
       `Assoc bnds
    : phone_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_phone_config

[@@@deriving.end]

type aws_connect_user = {
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  user_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_user) -> ()

let yojson_of_aws_connect_user =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       tags = v_tags;
       user_id = v_user_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_id", arg in
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_user

[@@@deriving.end]

let aws_connect_user ?id ?name ?tags ?user_id ~instance_id () :
    aws_connect_user =
  { id; instance_id; name; tags; user_id }

type t = {
  arn : string prop;
  directory_user_id : string prop;
  hierarchy_group_id : string prop;
  id : string prop;
  identity_info : identity_info list prop;
  instance_id : string prop;
  name : string prop;
  phone_config : phone_config list prop;
  routing_profile_id : string prop;
  security_profile_ids : string list prop;
  tags : (string * string) list prop;
  user_id : string prop;
}

let make ?id ?name ?tags ?user_id ~instance_id __id =
  let __type = "aws_connect_user" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       directory_user_id =
         Prop.computed __type __id "directory_user_id";
       hierarchy_group_id =
         Prop.computed __type __id "hierarchy_group_id";
       id = Prop.computed __type __id "id";
       identity_info = Prop.computed __type __id "identity_info";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       phone_config = Prop.computed __type __id "phone_config";
       routing_profile_id =
         Prop.computed __type __id "routing_profile_id";
       security_profile_ids =
         Prop.computed __type __id "security_profile_ids";
       tags = Prop.computed __type __id "tags";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_user
        (aws_connect_user ?id ?name ?tags ?user_id ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?user_id ~instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?user_id ~instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
