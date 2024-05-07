(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rds_cluster_activity_stream = {
  engine_native_audit_fields_included : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop;
  mode : string prop;
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_rds_cluster_activity_stream) -> ()

let yojson_of_aws_rds_cluster_activity_stream =
  (function
   | {
       engine_native_audit_fields_included =
         v_engine_native_audit_fields_included;
       id = v_id;
       kms_key_id = v_kms_key_id;
       mode = v_mode;
       resource_arn = v_resource_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
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
         match v_engine_native_audit_fields_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "engine_native_audit_fields_included", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_rds_cluster_activity_stream ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_rds_cluster_activity_stream

[@@@deriving.end]

let aws_rds_cluster_activity_stream
    ?engine_native_audit_fields_included ?id ~kms_key_id ~mode
    ~resource_arn () : aws_rds_cluster_activity_stream =
  {
    engine_native_audit_fields_included;
    id;
    kms_key_id;
    mode;
    resource_arn;
  }

type t = {
  tf_name : string;
  engine_native_audit_fields_included : bool prop;
  id : string prop;
  kinesis_stream_name : string prop;
  kms_key_id : string prop;
  mode : string prop;
  resource_arn : string prop;
}

let make ?engine_native_audit_fields_included ?id ~kms_key_id ~mode
    ~resource_arn __id =
  let __type = "aws_rds_cluster_activity_stream" in
  let __attrs =
    ({
       tf_name = __id;
       engine_native_audit_fields_included =
         Prop.computed __type __id
           "engine_native_audit_fields_included";
       id = Prop.computed __type __id "id";
       kinesis_stream_name =
         Prop.computed __type __id "kinesis_stream_name";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       mode = Prop.computed __type __id "mode";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rds_cluster_activity_stream
        (aws_rds_cluster_activity_stream
           ?engine_native_audit_fields_included ?id ~kms_key_id ~mode
           ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?engine_native_audit_fields_included ?id
    ~kms_key_id ~mode ~resource_arn __id =
  let (r : _ Tf_core.resource) =
    make ?engine_native_audit_fields_included ?id ~kms_key_id ~mode
      ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
