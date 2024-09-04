(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appfabric_ingestion = {
  app : string prop;
  app_bundle_arn : string prop;
  ingestion_type : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tenant_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appfabric_ingestion) -> ()

let yojson_of_aws_appfabric_ingestion =
  (function
   | {
       app = v_app;
       app_bundle_arn = v_app_bundle_arn;
       ingestion_type = v_ingestion_type;
       tags = v_tags;
       tenant_id = v_tenant_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_ingestion_type
         in
         ("ingestion_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_bundle_arn
         in
         ("app_bundle_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app in
         ("app", arg) :: bnds
       in
       `Assoc bnds
    : aws_appfabric_ingestion -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appfabric_ingestion

[@@@deriving.end]

let aws_appfabric_ingestion ?tags ~app ~app_bundle_arn
    ~ingestion_type ~tenant_id () : aws_appfabric_ingestion =
  { app; app_bundle_arn; ingestion_type; tags; tenant_id }

type t = {
  tf_name : string;
  app : string prop;
  app_bundle_arn : string prop;
  arn : string prop;
  id : string prop;
  ingestion_type : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  tenant_id : string prop;
}

let make ?tags ~app ~app_bundle_arn ~ingestion_type ~tenant_id __id =
  let __type = "aws_appfabric_ingestion" in
  let __attrs =
    ({
       tf_name = __id;
       app = Prop.computed __type __id "app";
       app_bundle_arn = Prop.computed __type __id "app_bundle_arn";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       ingestion_type = Prop.computed __type __id "ingestion_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tenant_id = Prop.computed __type __id "tenant_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appfabric_ingestion
        (aws_appfabric_ingestion ?tags ~app ~app_bundle_arn
           ~ingestion_type ~tenant_id ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ~app ~app_bundle_arn ~ingestion_type
    ~tenant_id __id =
  let (r : _ Tf_core.resource) =
    make ?tags ~app ~app_bundle_arn ~ingestion_type ~tenant_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
