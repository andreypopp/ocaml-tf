(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_keys = {
  access_key_id : string prop;
  create_date : string prop;
  status : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_keys) -> ()

let yojson_of_access_keys =
  (function
   | {
       access_key_id = v_access_key_id;
       create_date = v_create_date;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_date in
         ("create_date", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_key_id in
         ("access_key_id", arg) :: bnds
       in
       `Assoc bnds
    : access_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_keys

[@@@deriving.end]

type aws_iam_access_keys = {
  id : string prop option; [@option]
  user : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_access_keys) -> ()

let yojson_of_aws_iam_access_keys =
  (function
   | { id = v_id; user = v_user } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user in
         ("user", arg) :: bnds
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
    : aws_iam_access_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_access_keys

[@@@deriving.end]

let aws_iam_access_keys ?id ~user () : aws_iam_access_keys =
  { id; user }

type t = {
  tf_name : string;
  access_keys : access_keys list prop;
  id : string prop;
  user : string prop;
}

let make ?id ~user __id =
  let __type = "aws_iam_access_keys" in
  let __attrs =
    ({
       tf_name = __id;
       access_keys = Prop.computed __type __id "access_keys";
       id = Prop.computed __type __id "id";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_access_keys
        (aws_iam_access_keys ?id ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~user __id =
  let (r : _ Tf_core.resource) = make ?id ~user __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
