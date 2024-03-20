(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_openid_connect_provider = {
  client_id_list : string prop list;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  thumbprint_list : string prop list;
  url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iam_openid_connect_provider) -> ()

let yojson_of_aws_iam_openid_connect_provider =
  (function
   | {
       client_id_list = v_client_id_list;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       thumbprint_list = v_thumbprint_list;
       url = v_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_thumbprint_list
         in
         ("thumbprint_list", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_client_id_list
         in
         ("client_id_list", arg) :: bnds
       in
       `Assoc bnds
    : aws_iam_openid_connect_provider ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iam_openid_connect_provider

[@@@deriving.end]

let aws_iam_openid_connect_provider ?id ?tags ?tags_all
    ~client_id_list ~thumbprint_list ~url () :
    aws_iam_openid_connect_provider =
  { client_id_list; id; tags; tags_all; thumbprint_list; url }

type t = {
  arn : string prop;
  client_id_list : string list prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  thumbprint_list : string list prop;
  url : string prop;
}

let make ?id ?tags ?tags_all ~client_id_list ~thumbprint_list ~url
    __id =
  let __type = "aws_iam_openid_connect_provider" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       client_id_list = Prop.computed __type __id "client_id_list";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
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
        (aws_iam_openid_connect_provider ?id ?tags ?tags_all
           ~client_id_list ~thumbprint_list ~url ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~client_id_list
    ~thumbprint_list ~url __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~client_id_list ~thumbprint_list ~url
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
