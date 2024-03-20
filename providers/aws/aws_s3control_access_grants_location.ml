(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_access_grants_location = {
  account_id : string prop option; [@option]
  iam_role_arn : string prop;
  location_scope : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_access_grants_location) -> ()

let yojson_of_aws_s3control_access_grants_location =
  (function
   | {
       account_id = v_account_id;
       iam_role_arn = v_iam_role_arn;
       location_scope = v_location_scope;
       tags = v_tags;
     } ->
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
         let arg =
           yojson_of_prop yojson_of_string v_location_scope
         in
         ("location_scope", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_iam_role_arn in
         ("iam_role_arn", arg) :: bnds
       in
       let bnds =
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3control_access_grants_location ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_access_grants_location

[@@@deriving.end]

let aws_s3control_access_grants_location ?account_id ?tags
    ~iam_role_arn ~location_scope () :
    aws_s3control_access_grants_location =
  { account_id; iam_role_arn; location_scope; tags }

type t = {
  access_grants_location_arn : string prop;
  access_grants_location_id : string prop;
  account_id : string prop;
  iam_role_arn : string prop;
  id : string prop;
  location_scope : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?account_id ?tags ~iam_role_arn ~location_scope __id =
  let __type = "aws_s3control_access_grants_location" in
  let __attrs =
    ({
       access_grants_location_arn =
         Prop.computed __type __id "access_grants_location_arn";
       access_grants_location_id =
         Prop.computed __type __id "access_grants_location_id";
       account_id = Prop.computed __type __id "account_id";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       location_scope = Prop.computed __type __id "location_scope";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_grants_location
        (aws_s3control_access_grants_location ?account_id ?tags
           ~iam_role_arn ~location_scope ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?tags ~iam_role_arn
    ~location_scope __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?tags ~iam_role_arn ~location_scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
