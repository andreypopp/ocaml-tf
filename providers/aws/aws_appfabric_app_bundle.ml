(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appfabric_app_bundle = {
  customer_managed_key_arn : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appfabric_app_bundle) -> ()

let yojson_of_aws_appfabric_app_bundle =
  (function
   | {
       customer_managed_key_arn = v_customer_managed_key_arn;
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
         match v_customer_managed_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "customer_managed_key_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appfabric_app_bundle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appfabric_app_bundle

[@@@deriving.end]

let aws_appfabric_app_bundle ?customer_managed_key_arn ?tags () :
    aws_appfabric_app_bundle =
  { customer_managed_key_arn; tags }

type t = {
  tf_name : string;
  arn : string prop;
  customer_managed_key_arn : string prop;
  id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?customer_managed_key_arn ?tags __id =
  let __type = "aws_appfabric_app_bundle" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       customer_managed_key_arn =
         Prop.computed __type __id "customer_managed_key_arn";
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
      yojson_of_aws_appfabric_app_bundle
        (aws_appfabric_app_bundle ?customer_managed_key_arn ?tags ());
    attrs = __attrs;
  }

let register ?tf_module ?customer_managed_key_arn ?tags __id =
  let (r : _ Tf_core.resource) =
    make ?customer_managed_key_arn ?tags __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
