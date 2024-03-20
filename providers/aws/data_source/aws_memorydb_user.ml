(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type authentication_mode = {
  password_count : float prop;
  type_ : string prop; [@key "type"]
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_password_count in
         ("password_count", arg) :: bnds
       in
       `Assoc bnds
    : authentication_mode -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_authentication_mode

[@@@deriving.end]

type aws_memorydb_user = {
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  user_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_memorydb_user) -> ()

let yojson_of_aws_memorydb_user =
  (function
   | { id = v_id; tags = v_tags; user_name = v_user_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_name in
         ("user_name", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_memorydb_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_memorydb_user

[@@@deriving.end]

let aws_memorydb_user ?id ?tags ~user_name () : aws_memorydb_user =
  { id; tags; user_name }

type t = {
  access_string : string prop;
  arn : string prop;
  authentication_mode : authentication_mode list prop;
  id : string prop;
  minimum_engine_version : string prop;
  tags : (string * string) list prop;
  user_name : string prop;
}

let make ?id ?tags ~user_name __id =
  let __type = "aws_memorydb_user" in
  let __attrs =
    ({
       access_string = Prop.computed __type __id "access_string";
       arn = Prop.computed __type __id "arn";
       authentication_mode =
         Prop.computed __type __id "authentication_mode";
       id = Prop.computed __type __id "id";
       minimum_engine_version =
         Prop.computed __type __id "minimum_engine_version";
       tags = Prop.computed __type __id "tags";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_memorydb_user
        (aws_memorydb_user ?id ?tags ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~user_name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~user_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
