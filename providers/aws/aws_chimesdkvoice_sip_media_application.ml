(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type endpoints = { lambda_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : endpoints) -> ()

let yojson_of_endpoints =
  (function
   | { lambda_arn = v_lambda_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_lambda_arn in
         ("lambda_arn", arg) :: bnds
       in
       `Assoc bnds
    : endpoints -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_endpoints

[@@@deriving.end]

type aws_chimesdkvoice_sip_media_application = {
  aws_region : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  endpoints : endpoints list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_chimesdkvoice_sip_media_application) -> ()

let yojson_of_aws_chimesdkvoice_sip_media_application =
  (function
   | {
       aws_region = v_aws_region;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       endpoints = v_endpoints;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_endpoints then bnds
         else
           let arg =
             (yojson_of_list yojson_of_endpoints) v_endpoints
           in
           let bnd = "endpoints", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aws_region in
         ("aws_region", arg) :: bnds
       in
       `Assoc bnds
    : aws_chimesdkvoice_sip_media_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_chimesdkvoice_sip_media_application

[@@@deriving.end]

let endpoints ~lambda_arn () : endpoints = { lambda_arn }

let aws_chimesdkvoice_sip_media_application ?id ?tags ?tags_all
    ~aws_region ~name ~endpoints () :
    aws_chimesdkvoice_sip_media_application =
  { aws_region; id; name; tags; tags_all; endpoints }

type t = {
  tf_name : string;
  arn : string prop;
  aws_region : string prop;
  id : string prop;
  name : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?tags ?tags_all ~aws_region ~name ~endpoints __id =
  let __type = "aws_chimesdkvoice_sip_media_application" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       aws_region = Prop.computed __type __id "aws_region";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chimesdkvoice_sip_media_application
        (aws_chimesdkvoice_sip_media_application ?id ?tags ?tags_all
           ~aws_region ~name ~endpoints ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~aws_region ~name
    ~endpoints __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~aws_region ~name ~endpoints __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
