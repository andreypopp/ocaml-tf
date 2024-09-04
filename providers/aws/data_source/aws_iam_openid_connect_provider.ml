(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_openid_connect_provider = {
  arn : string prop option; [@option]
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_openid_connect_provider) -> ()

let yojson_of_aws_iam_openid_connect_provider =
  (function
   | { arn = v_arn; id = v_id; tags = v_tags; url = v_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "url", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_iam_openid_connect_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_openid_connect_provider

[@@@deriving.end]

let aws_iam_openid_connect_provider ?arn ?id ?tags ?url () :
    aws_iam_openid_connect_provider =
  { arn; id; tags; url }

type t = {
  tf_name : string;
  arn : string prop;
  client_id_list : string list prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  thumbprint_list : string list prop;
  url : string prop;
}

let make ?arn ?id ?tags ?url __id =
  let __type = "aws_iam_openid_connect_provider" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       client_id_list = Prop.computed __type __id "client_id_list";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       thumbprint_list = Prop.computed __type __id "thumbprint_list";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_openid_connect_provider
        (aws_iam_openid_connect_provider ?arn ?id ?tags ?url ());
    attrs = __attrs;
  }

let register ?tf_module ?arn ?id ?tags ?url __id =
  let (r : _ Tf_core.resource) = make ?arn ?id ?tags ?url __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
