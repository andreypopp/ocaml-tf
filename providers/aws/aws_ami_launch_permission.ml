(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ami_launch_permission = {
  account_id : string prop option; [@option]
  group : string prop option; [@option]
  id : string prop option; [@option]
  image_id : string prop;
  organization_arn : string prop option; [@option]
  organizational_unit_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ami_launch_permission) -> ()

let yojson_of_aws_ami_launch_permission =
  (function
   | {
       account_id = v_account_id;
       group = v_group;
       id = v_id;
       image_id = v_image_id;
       organization_arn = v_organization_arn;
       organizational_unit_arn = v_organizational_unit_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_organizational_unit_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organizational_unit_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_id in
         ("image_id", arg) :: bnds
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
         match v_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group", arg in
             bnd :: bnds
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
    : aws_ami_launch_permission -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ami_launch_permission

[@@@deriving.end]

let aws_ami_launch_permission ?account_id ?group ?id
    ?organization_arn ?organizational_unit_arn ~image_id () :
    aws_ami_launch_permission =
  {
    account_id;
    group;
    id;
    image_id;
    organization_arn;
    organizational_unit_arn;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  group : string prop;
  id : string prop;
  image_id : string prop;
  organization_arn : string prop;
  organizational_unit_arn : string prop;
}

let make ?account_id ?group ?id ?organization_arn
    ?organizational_unit_arn ~image_id __id =
  let __type = "aws_ami_launch_permission" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       group = Prop.computed __type __id "group";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       organization_arn =
         Prop.computed __type __id "organization_arn";
       organizational_unit_arn =
         Prop.computed __type __id "organizational_unit_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ami_launch_permission
        (aws_ami_launch_permission ?account_id ?group ?id
           ?organization_arn ?organizational_unit_arn ~image_id ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?group ?id ?organization_arn
    ?organizational_unit_arn ~image_id __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?group ?id ?organization_arn
      ?organizational_unit_arn ~image_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
