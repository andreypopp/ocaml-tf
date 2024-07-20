(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type kms_server_side_encryption = {
  kms_key_id : string prop option; [@option]
  opt_in_status : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kms_server_side_encryption) -> ()

let yojson_of_kms_server_side_encryption =
  (function
   | {
       kms_key_id = v_kms_key_id;
       opt_in_status = v_opt_in_status;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_opt_in_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opt_in_status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kms_server_side_encryption -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kms_server_side_encryption

[@@@deriving.end]

type logs_anomaly_detection = {
  opt_in_status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs_anomaly_detection) -> ()

let yojson_of_logs_anomaly_detection =
  (function
   | { opt_in_status = v_opt_in_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_opt_in_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opt_in_status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logs_anomaly_detection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs_anomaly_detection

[@@@deriving.end]

type ops_center = { opt_in_status : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : ops_center) -> ()

let yojson_of_ops_center =
  (function
   | { opt_in_status = v_opt_in_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_opt_in_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "opt_in_status", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ops_center -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ops_center

[@@@deriving.end]

type aws_devopsguru_service_integration = {
  kms_server_side_encryption : kms_server_side_encryption list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  logs_anomaly_detection : logs_anomaly_detection list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ops_center : ops_center list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_devopsguru_service_integration) -> ()

let yojson_of_aws_devopsguru_service_integration =
  (function
   | {
       kms_server_side_encryption = v_kms_server_side_encryption;
       logs_anomaly_detection = v_logs_anomaly_detection;
       ops_center = v_ops_center;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ops_center then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ops_center) v_ops_center
           in
           let bnd = "ops_center", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logs_anomaly_detection then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logs_anomaly_detection)
               v_logs_anomaly_detection
           in
           let bnd = "logs_anomaly_detection", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kms_server_side_encryption then bnds
         else
           let arg =
             (yojson_of_list yojson_of_kms_server_side_encryption)
               v_kms_server_side_encryption
           in
           let bnd = "kms_server_side_encryption", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : aws_devopsguru_service_integration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_devopsguru_service_integration

[@@@deriving.end]

let kms_server_side_encryption ?kms_key_id ?opt_in_status ?type_ () :
    kms_server_side_encryption =
  { kms_key_id; opt_in_status; type_ }

let logs_anomaly_detection ?opt_in_status () : logs_anomaly_detection
    =
  { opt_in_status }

let ops_center ?opt_in_status () : ops_center = { opt_in_status }

let aws_devopsguru_service_integration
    ?(kms_server_side_encryption = []) ?(logs_anomaly_detection = [])
    ?(ops_center = []) () : aws_devopsguru_service_integration =
  { kms_server_side_encryption; logs_anomaly_detection; ops_center }

type t = { tf_name : string; id : string prop }

let make ?(kms_server_side_encryption = [])
    ?(logs_anomaly_detection = []) ?(ops_center = []) __id =
  let __type = "aws_devopsguru_service_integration" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_devopsguru_service_integration
        (aws_devopsguru_service_integration
           ~kms_server_side_encryption ~logs_anomaly_detection
           ~ops_center ());
    attrs = __attrs;
  }

let register ?tf_module ?(kms_server_side_encryption = [])
    ?(logs_anomaly_detection = []) ?(ops_center = []) __id =
  let (r : _ Tf_core.resource) =
    make ~kms_server_side_encryption ~logs_anomaly_detection
      ~ops_center __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
