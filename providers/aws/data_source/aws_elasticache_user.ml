(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_mode = {
  password_count : float prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : authentication_mode) -> ()

let yojson_of_authentication_mode =
  (function
   | { password_count = v_password_count; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : authentication_mode -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_mode

[@@@deriving.end]

type aws_elasticache_user = {
  access_string : string prop option; [@option]
  engine : string prop option; [@option]
  id : string prop option; [@option]
  no_password_required : bool prop option; [@option]
  passwords : string prop list option; [@option]
  user_id : string prop;
  user_name : string prop option; [@option]
  authentication_mode : authentication_mode list;
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
       user_id = v_user_id;
       user_name = v_user_name;
       authentication_mode = v_authentication_mode;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_authentication_mode
             v_authentication_mode
         in
         ("authentication_mode", arg) :: bnds
       in
       let bnds =
         match v_user_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
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
         match v_engine with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "engine", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_string", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_elasticache_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_elasticache_user

[@@@deriving.end]

let authentication_mode ?password_count ?type_ () :
    authentication_mode =
  { password_count; type_ }

let aws_elasticache_user ?access_string ?engine ?id
    ?no_password_required ?passwords ?user_name ~user_id
    ~authentication_mode () : aws_elasticache_user =
  {
    access_string;
    engine;
    id;
    no_password_required;
    passwords;
    user_id;
    user_name;
    authentication_mode;
  }

type t = {
  access_string : string prop;
  engine : string prop;
  id : string prop;
  no_password_required : bool prop;
  passwords : string list prop;
  user_id : string prop;
  user_name : string prop;
}

let make ?access_string ?engine ?id ?no_password_required ?passwords
    ?user_name ~user_id ~authentication_mode __id =
  let __type = "aws_elasticache_user" in
  let __attrs =
    ({
       access_string = Prop.computed __type __id "access_string";
       engine = Prop.computed __type __id "engine";
       id = Prop.computed __type __id "id";
       no_password_required =
         Prop.computed __type __id "no_password_required";
       passwords = Prop.computed __type __id "passwords";
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
        (aws_elasticache_user ?access_string ?engine ?id
           ?no_password_required ?passwords ?user_name ~user_id
           ~authentication_mode ());
    attrs = __attrs;
  }

let register ?tf_module ?access_string ?engine ?id
    ?no_password_required ?passwords ?user_name ~user_id
    ~authentication_mode __id =
  let (r : _ Tf_core.resource) =
    make ?access_string ?engine ?id ?no_password_required ?passwords
      ?user_name ~user_id ~authentication_mode __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
