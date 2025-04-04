(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_mode = {
  passwords : string prop list option; [@option]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication_mode) -> ()

let yojson_of_authentication_mode =
  (function
   | { passwords = v_passwords; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_passwords with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "passwords", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authentication_mode -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_mode

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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

type aws_elasticache_user = {
  access_string : string prop;
  engine : string prop;
  id : string prop option; [@option]
  no_password_required : bool prop option; [@option]
  passwords : string prop list option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  user_id : string prop;
  user_name : string prop;
  authentication_mode : authentication_mode list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_elasticache_user) -> ()

let yojson_of_aws_elasticache_user =
  (function
   | {
       access_string = v_access_string;
       engine = v_engine;
       id = v_id;
       no_password_required = v_no_password_required;
       passwords = v_passwords;
       tags = v_tags;
       tags_all = v_tags_all;
       user_id = v_user_id;
       user_name = v_user_name;
       authentication_mode = v_authentication_mode;
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
         if Stdlib.( = ) [] v_authentication_mode then bnds
         else
           let arg =
             (yojson_of_list yojson_of_authentication_mode)
               v_authentication_mode
           in
           let bnd = "authentication_mode", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
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
         match v_passwords with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "passwords", arg in
             bnd :: bnds
       in
       let bnds =
         match v_no_password_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "no_password_required", arg in
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
         let arg = yojson_of_prop yojson_of_string v_engine in
         ("engine", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_string in
         ("access_string", arg) :: bnds
       in
       `Assoc bnds
    : aws_elasticache_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_user

[@@@deriving.end]

let authentication_mode ?passwords ~type_ () : authentication_mode =
  { passwords; type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let aws_elasticache_user ?id ?no_password_required ?passwords ?tags
    ?tags_all ?(authentication_mode = []) ?timeouts ~access_string
    ~engine ~user_id ~user_name () : aws_elasticache_user =
  {
    access_string;
    engine;
    id;
    no_password_required;
    passwords;
    tags;
    tags_all;
    user_id;
    user_name;
    authentication_mode;
    timeouts;
  }

type t = {
  tf_name : string;
  access_string : string prop;
  arn : string prop;
  engine : string prop;
  id : string prop;
  no_password_required : bool prop;
  passwords : string list prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  user_id : string prop;
  user_name : string prop;
}

let make ?id ?no_password_required ?passwords ?tags ?tags_all
    ?(authentication_mode = []) ?timeouts ~access_string ~engine
    ~user_id ~user_name __id =
  let __type = "aws_elasticache_user" in
  let __attrs =
    ({
       tf_name = __id;
       access_string = Prop.computed __type __id "access_string";
       arn = Prop.computed __type __id "arn";
       engine = Prop.computed __type __id "engine";
       id = Prop.computed __type __id "id";
       no_password_required =
         Prop.computed __type __id "no_password_required";
       passwords = Prop.computed __type __id "passwords";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_id = Prop.computed __type __id "user_id";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_elasticache_user
        (aws_elasticache_user ?id ?no_password_required ?passwords
           ?tags ?tags_all ~authentication_mode ?timeouts
           ~access_string ~engine ~user_id ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?no_password_required ?passwords ?tags
    ?tags_all ?(authentication_mode = []) ?timeouts ~access_string
    ~engine ~user_id ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?no_password_required ?passwords ?tags ?tags_all
      ~authentication_mode ?timeouts ~access_string ~engine ~user_id
      ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
