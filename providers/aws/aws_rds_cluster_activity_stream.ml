(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_rds_cluster_activity_stream = {
  engine_native_audit_fields_included : bool prop option; [@option]
      (** engine_native_audit_fields_included *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop;  (** kms_key_id *)
  mode : string prop;  (** mode *)
  resource_arn : string prop;  (** resource_arn *)
}
[@@deriving yojson_of]
(** aws_rds_cluster_activity_stream *)

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
