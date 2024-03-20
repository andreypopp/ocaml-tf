(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type role_last_used = {
  last_used_date : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : role_last_used) -> ()

let yojson_of_role_last_used =
  (function
   | { last_used_date = v_last_used_date; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_used_date
         in
         ("last_used_date", arg) :: bnds
       in
       `Assoc bnds
    : role_last_used -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_role_last_used

[@@@deriving.end]

type aws_iam_role = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_role) -> ()

let yojson_of_aws_iam_role =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_role -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_role

[@@@deriving.end]

let aws_iam_role ?id ?tags ~name () : aws_iam_role =
  { id; name; tags }

type t = {
  arn : string prop;
  assume_role_policy : string prop;
  create_date : string prop;
  description : string prop;
  id : string prop;
  max_session_duration : float prop;
  name : string prop;
  path : string prop;
  permissions_boundary : string prop;
  role_last_used : role_last_used list prop;
  tags : (string * string) list prop;
  unique_id : string prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_iam_role" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       assume_role_policy =
         Prop.computed __type __id "assume_role_policy";
       create_date = Prop.computed __type __id "create_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       max_session_duration =
         Prop.computed __type __id "max_session_duration";
       name = Prop.computed __type __id "name";
       path = Prop.computed __type __id "path";
       permissions_boundary =
         Prop.computed __type __id "permissions_boundary";
       role_last_used = Prop.computed __type __id "role_last_used";
       tags = Prop.computed __type __id "tags";
       unique_id = Prop.computed __type __id "unique_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json = yojson_of_aws_iam_role (aws_iam_role ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
