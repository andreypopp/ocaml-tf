(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_s3control_access_grants_instance = {
  account_id : string prop option; [@option]
  identity_center_arn : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3control_access_grants_instance) -> ()

let yojson_of_aws_s3control_access_grants_instance =
  (function
   | {
       account_id = v_account_id;
       identity_center_arn = v_identity_center_arn;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_center_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_center_arn", arg in
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
    : aws_s3control_access_grants_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3control_access_grants_instance

[@@@deriving.end]

let aws_s3control_access_grants_instance ?account_id
    ?identity_center_arn ?tags () :
    aws_s3control_access_grants_instance =
  { account_id; identity_center_arn; tags }

type t = {
  tf_name : string;
  access_grants_instance_arn : string prop;
  access_grants_instance_id : string prop;
  account_id : string prop;
  id : string prop;
  identity_center_application_arn : string prop;
  identity_center_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?account_id ?identity_center_arn ?tags __id =
  let __type = "aws_s3control_access_grants_instance" in
  let __attrs =
    ({
       tf_name = __id;
       access_grants_instance_arn =
         Prop.computed __type __id "access_grants_instance_arn";
       access_grants_instance_id =
         Prop.computed __type __id "access_grants_instance_id";
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       identity_center_application_arn =
         Prop.computed __type __id "identity_center_application_arn";
       identity_center_arn =
         Prop.computed __type __id "identity_center_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3control_access_grants_instance
        (aws_s3control_access_grants_instance ?account_id
           ?identity_center_arn ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?identity_center_arn ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?identity_center_arn ?tags __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
