(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dms_certificate = {
  certificate_id : string prop;
  certificate_pem : string prop option; [@option]
  certificate_wallet : string prop option; [@option]
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_certificate) -> ()

let yojson_of_aws_dms_certificate =
  (function
   | {
       certificate_id = v_certificate_id;
       certificate_pem = v_certificate_pem;
       certificate_wallet = v_certificate_wallet;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_wallet with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_wallet", arg in
             bnd :: bnds
       in
       let bnds =
         match v_certificate_pem with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "certificate_pem", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_certificate_id
         in
         ("certificate_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_dms_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_certificate

[@@@deriving.end]

let aws_dms_certificate ?certificate_pem ?certificate_wallet ?id
    ?tags ?tags_all ~certificate_id () : aws_dms_certificate =
  {
    certificate_id;
    certificate_pem;
    certificate_wallet;
    id;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  certificate_arn : string prop;
  certificate_id : string prop;
  certificate_pem : string prop;
  certificate_wallet : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?certificate_pem ?certificate_wallet ?id ?tags ?tags_all
    ~certificate_id __id =
  let __type = "aws_dms_certificate" in
  let __attrs =
    ({
       tf_name = __id;
       certificate_arn = Prop.computed __type __id "certificate_arn";
       certificate_id = Prop.computed __type __id "certificate_id";
       certificate_pem = Prop.computed __type __id "certificate_pem";
       certificate_wallet =
         Prop.computed __type __id "certificate_wallet";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_certificate
        (aws_dms_certificate ?certificate_pem ?certificate_wallet ?id
           ?tags ?tags_all ~certificate_id ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_pem ?certificate_wallet ?id
    ?tags ?tags_all ~certificate_id __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_pem ?certificate_wallet ?id ?tags ?tags_all
      ~certificate_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
