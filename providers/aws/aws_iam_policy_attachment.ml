(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_policy_attachment = {
  groups : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  policy_arn : string prop;
  roles : string prop list option; [@option]
  users : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_policy_attachment) -> ()

let yojson_of_aws_iam_policy_attachment =
  (function
   | {
       groups = v_groups;
       id = v_id;
       name = v_name;
       policy_arn = v_policy_arn;
       roles = v_roles;
       users = v_users;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "users", arg in
             bnd :: bnds
       in
       let bnds =
         match v_roles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "roles", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_arn in
         ("policy_arn", arg) :: bnds
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
       let bnds =
         match v_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "groups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_policy_attachment -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_policy_attachment

[@@@deriving.end]

let aws_iam_policy_attachment ?groups ?id ?roles ?users ~name
    ~policy_arn () : aws_iam_policy_attachment =
  { groups; id; name; policy_arn; roles; users }

type t = {
  groups : string list prop;
  id : string prop;
  name : string prop;
  policy_arn : string prop;
  roles : string list prop;
  users : string list prop;
}

let make ?groups ?id ?roles ?users ~name ~policy_arn __id =
  let __type = "aws_iam_policy_attachment" in
  let __attrs =
    ({
       groups = Prop.computed __type __id "groups";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy_arn = Prop.computed __type __id "policy_arn";
       roles = Prop.computed __type __id "roles";
       users = Prop.computed __type __id "users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_policy_attachment
        (aws_iam_policy_attachment ?groups ?id ?roles ?users ~name
           ~policy_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?groups ?id ?roles ?users ~name ~policy_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?groups ?id ?roles ?users ~name ~policy_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
