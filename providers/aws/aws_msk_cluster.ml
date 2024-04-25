(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type broker_node_group_info__connectivity_info__public_access = {
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : broker_node_group_info__connectivity_info__public_access) ->
  ()

let yojson_of_broker_node_group_info__connectivity_info__public_access
    =
  (function
   | { type_ = v_type_ } ->
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
       `Assoc bnds
    : broker_node_group_info__connectivity_info__public_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__connectivity_info__public_access

[@@@deriving.end]

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl = {
  iam : bool prop option; [@option]
  scram : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl) ->
  ()

let yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    =
  (function
   | { iam = v_iam; scram = v_scram } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scram with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scram", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "iam", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl

[@@@deriving.end]

type broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication = {
  tls : bool prop option; [@option]
  sasl :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication) ->
  ()

let yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    =
  (function
   | { tls = v_tls; sasl = v_sasl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
             v_sasl
         in
         ("sasl", arg) :: bnds
       in
       let bnds =
         match v_tls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication

[@@@deriving.end]

type broker_node_group_info__connectivity_info__vpc_connectivity = {
  client_authentication :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       broker_node_group_info__connectivity_info__vpc_connectivity) ->
  ()

let yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity
    =
  (function
   | { client_authentication = v_client_authentication } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
             v_client_authentication
         in
         ("client_authentication", arg) :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__connectivity_info__vpc_connectivity ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity

[@@@deriving.end]

type broker_node_group_info__connectivity_info = {
  public_access :
    broker_node_group_info__connectivity_info__public_access list;
  vpc_connectivity :
    broker_node_group_info__connectivity_info__vpc_connectivity list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_node_group_info__connectivity_info) -> ()

let yojson_of_broker_node_group_info__connectivity_info =
  (function
   | {
       public_access = v_public_access;
       vpc_connectivity = v_vpc_connectivity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_broker_node_group_info__connectivity_info__vpc_connectivity
             v_vpc_connectivity
         in
         ("vpc_connectivity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_broker_node_group_info__connectivity_info__public_access
             v_public_access
         in
         ("public_access", arg) :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__connectivity_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_node_group_info__connectivity_info

[@@@deriving.end]

type broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput = {
  enabled : bool prop option; [@option]
  volume_throughput : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput) ->
  ()

let yojson_of_broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    =
  (function
   | { enabled = v_enabled; volume_throughput = v_volume_throughput }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_volume_throughput with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_throughput", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput

[@@@deriving.end]

type broker_node_group_info__storage_info__ebs_storage_info = {
  volume_size : float prop option; [@option]
  provisioned_throughput :
    broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : broker_node_group_info__storage_info__ebs_storage_info) ->
  ()

let yojson_of_broker_node_group_info__storage_info__ebs_storage_info
    =
  (function
   | {
       volume_size = v_volume_size;
       provisioned_throughput = v_provisioned_throughput;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
             v_provisioned_throughput
         in
         ("provisioned_throughput", arg) :: bnds
       in
       let bnds =
         match v_volume_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_size", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__storage_info__ebs_storage_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_broker_node_group_info__storage_info__ebs_storage_info

[@@@deriving.end]

type broker_node_group_info__storage_info = {
  ebs_storage_info :
    broker_node_group_info__storage_info__ebs_storage_info list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_node_group_info__storage_info) -> ()

let yojson_of_broker_node_group_info__storage_info =
  (function
   | { ebs_storage_info = v_ebs_storage_info } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_broker_node_group_info__storage_info__ebs_storage_info
             v_ebs_storage_info
         in
         ("ebs_storage_info", arg) :: bnds
       in
       `Assoc bnds
    : broker_node_group_info__storage_info ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_node_group_info__storage_info

[@@@deriving.end]

type broker_node_group_info = {
  az_distribution : string prop option; [@option]
  client_subnets : string prop list;
  instance_type : string prop;
  security_groups : string prop list;
  connectivity_info : broker_node_group_info__connectivity_info list;
  storage_info : broker_node_group_info__storage_info list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : broker_node_group_info) -> ()

let yojson_of_broker_node_group_info =
  (function
   | {
       az_distribution = v_az_distribution;
       client_subnets = v_client_subnets;
       instance_type = v_instance_type;
       security_groups = v_security_groups;
       connectivity_info = v_connectivity_info;
       storage_info = v_storage_info;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_broker_node_group_info__storage_info
             v_storage_info
         in
         ("storage_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_broker_node_group_info__connectivity_info
             v_connectivity_info
         in
         ("connectivity_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_groups
         in
         ("security_groups", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_type in
         ("instance_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_client_subnets
         in
         ("client_subnets", arg) :: bnds
       in
       let bnds =
         match v_az_distribution with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "az_distribution", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : broker_node_group_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_broker_node_group_info

[@@@deriving.end]

type client_authentication__sasl = {
  iam : bool prop option; [@option]
  scram : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_authentication__sasl) -> ()

let yojson_of_client_authentication__sasl =
  (function
   | { iam = v_iam; scram = v_scram } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_scram with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "scram", arg in
             bnd :: bnds
       in
       let bnds =
         match v_iam with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "iam", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_authentication__sasl ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_authentication__sasl

[@@@deriving.end]

type client_authentication__tls = {
  certificate_authority_arns : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_authentication__tls) -> ()

let yojson_of_client_authentication__tls =
  (function
   | { certificate_authority_arns = v_certificate_authority_arns } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_certificate_authority_arns with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "certificate_authority_arns", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_authentication__tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_authentication__tls

[@@@deriving.end]

type client_authentication = {
  unauthenticated : bool prop option; [@option]
  sasl : client_authentication__sasl list;
  tls : client_authentication__tls list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : client_authentication) -> ()

let yojson_of_client_authentication =
  (function
   | {
       unauthenticated = v_unauthenticated;
       sasl = v_sasl;
       tls = v_tls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_authentication__tls v_tls
         in
         ("tls", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_authentication__sasl
             v_sasl
         in
         ("sasl", arg) :: bnds
       in
       let bnds =
         match v_unauthenticated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "unauthenticated", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : client_authentication -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_client_authentication

[@@@deriving.end]

type configuration_info = {
  arn : string prop;
  revision : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration_info) -> ()

let yojson_of_configuration_info =
  (function
   | { arn = v_arn; revision = v_revision } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_revision in
         ("revision", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : configuration_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration_info

[@@@deriving.end]

type encryption_info__encryption_in_transit = {
  client_broker : string prop option; [@option]
  in_cluster : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_info__encryption_in_transit) -> ()

let yojson_of_encryption_info__encryption_in_transit =
  (function
   | { client_broker = v_client_broker; in_cluster = v_in_cluster }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_in_cluster with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "in_cluster", arg in
             bnd :: bnds
       in
       let bnds =
         match v_client_broker with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_broker", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_info__encryption_in_transit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_info__encryption_in_transit

[@@@deriving.end]

type encryption_info = {
  encryption_at_rest_kms_key_arn : string prop option; [@option]
  encryption_in_transit : encryption_info__encryption_in_transit list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_info) -> ()

let yojson_of_encryption_info =
  (function
   | {
       encryption_at_rest_kms_key_arn =
         v_encryption_at_rest_kms_key_arn;
       encryption_in_transit = v_encryption_in_transit;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_encryption_info__encryption_in_transit
             v_encryption_in_transit
         in
         ("encryption_in_transit", arg) :: bnds
       in
       let bnds =
         match v_encryption_at_rest_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_at_rest_kms_key_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : encryption_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_info

[@@@deriving.end]

type logging_info__broker_logs__cloudwatch_logs = {
  enabled : bool prop;
  log_group : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_info__broker_logs__cloudwatch_logs) -> ()

let yojson_of_logging_info__broker_logs__cloudwatch_logs =
  (function
   | { enabled = v_enabled; log_group = v_log_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_log_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_group", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : logging_info__broker_logs__cloudwatch_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_info__broker_logs__cloudwatch_logs

[@@@deriving.end]

type logging_info__broker_logs__firehose = {
  delivery_stream : string prop option; [@option]
  enabled : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_info__broker_logs__firehose) -> ()

let yojson_of_logging_info__broker_logs__firehose =
  (function
   | { delivery_stream = v_delivery_stream; enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_delivery_stream with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delivery_stream", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_info__broker_logs__firehose ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_info__broker_logs__firehose

[@@@deriving.end]

type logging_info__broker_logs__s3 = {
  bucket : string prop option; [@option]
  enabled : bool prop;
  prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_info__broker_logs__s3) -> ()

let yojson_of_logging_info__broker_logs__s3 =
  (function
   | { bucket = v_bucket; enabled = v_enabled; prefix = v_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : logging_info__broker_logs__s3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_info__broker_logs__s3

[@@@deriving.end]

type logging_info__broker_logs = {
  cloudwatch_logs : logging_info__broker_logs__cloudwatch_logs list;
  firehose : logging_info__broker_logs__firehose list;
  s3 : logging_info__broker_logs__s3 list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_info__broker_logs) -> ()

let yojson_of_logging_info__broker_logs =
  (function
   | {
       cloudwatch_logs = v_cloudwatch_logs;
       firehose = v_firehose;
       s3 = v_s3;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_info__broker_logs__s3
             v_s3
         in
         ("s3", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logging_info__broker_logs__firehose v_firehose
         in
         ("firehose", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_logging_info__broker_logs__cloudwatch_logs
             v_cloudwatch_logs
         in
         ("cloudwatch_logs", arg) :: bnds
       in
       `Assoc bnds
    : logging_info__broker_logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_info__broker_logs

[@@@deriving.end]

type logging_info = { broker_logs : logging_info__broker_logs list }
[@@deriving_inline yojson_of]

let _ = fun (_ : logging_info) -> ()

let yojson_of_logging_info =
  (function
   | { broker_logs = v_broker_logs } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_info__broker_logs
             v_broker_logs
         in
         ("broker_logs", arg) :: bnds
       in
       `Assoc bnds
    : logging_info -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging_info

[@@@deriving.end]

type open_monitoring__prometheus__jmx_exporter = {
  enabled_in_broker : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : open_monitoring__prometheus__jmx_exporter) -> ()

let yojson_of_open_monitoring__prometheus__jmx_exporter =
  (function
   | { enabled_in_broker = v_enabled_in_broker } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enabled_in_broker
         in
         ("enabled_in_broker", arg) :: bnds
       in
       `Assoc bnds
    : open_monitoring__prometheus__jmx_exporter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_open_monitoring__prometheus__jmx_exporter

[@@@deriving.end]

type open_monitoring__prometheus__node_exporter = {
  enabled_in_broker : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : open_monitoring__prometheus__node_exporter) -> ()

let yojson_of_open_monitoring__prometheus__node_exporter =
  (function
   | { enabled_in_broker = v_enabled_in_broker } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enabled_in_broker
         in
         ("enabled_in_broker", arg) :: bnds
       in
       `Assoc bnds
    : open_monitoring__prometheus__node_exporter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_open_monitoring__prometheus__node_exporter

[@@@deriving.end]

type open_monitoring__prometheus = {
  jmx_exporter : open_monitoring__prometheus__jmx_exporter list;
  node_exporter : open_monitoring__prometheus__node_exporter list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : open_monitoring__prometheus) -> ()

let yojson_of_open_monitoring__prometheus =
  (function
   | {
       jmx_exporter = v_jmx_exporter;
       node_exporter = v_node_exporter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_open_monitoring__prometheus__node_exporter
             v_node_exporter
         in
         ("node_exporter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_open_monitoring__prometheus__jmx_exporter
             v_jmx_exporter
         in
         ("jmx_exporter", arg) :: bnds
       in
       `Assoc bnds
    : open_monitoring__prometheus ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_open_monitoring__prometheus

[@@@deriving.end]

type open_monitoring = {
  prometheus : open_monitoring__prometheus list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : open_monitoring) -> ()

let yojson_of_open_monitoring =
  (function
   | { prometheus = v_prometheus } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_open_monitoring__prometheus
             v_prometheus
         in
         ("prometheus", arg) :: bnds
       in
       `Assoc bnds
    : open_monitoring -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_open_monitoring

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_msk_cluster = {
  cluster_name : string prop;
  enhanced_monitoring : string prop option; [@option]
  id : string prop option; [@option]
  kafka_version : string prop;
  number_of_broker_nodes : float prop;
  storage_mode : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  broker_node_group_info : broker_node_group_info list;
  client_authentication : client_authentication list;
  configuration_info : configuration_info list;
  encryption_info : encryption_info list;
  logging_info : logging_info list;
  open_monitoring : open_monitoring list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_msk_cluster) -> ()

let yojson_of_aws_msk_cluster =
  (function
   | {
       cluster_name = v_cluster_name;
       enhanced_monitoring = v_enhanced_monitoring;
       id = v_id;
       kafka_version = v_kafka_version;
       number_of_broker_nodes = v_number_of_broker_nodes;
       storage_mode = v_storage_mode;
       tags = v_tags;
       tags_all = v_tags_all;
       broker_node_group_info = v_broker_node_group_info;
       client_authentication = v_client_authentication;
       configuration_info = v_configuration_info;
       encryption_info = v_encryption_info;
       logging_info = v_logging_info;
       open_monitoring = v_open_monitoring;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_open_monitoring v_open_monitoring
         in
         ("open_monitoring", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_logging_info v_logging_info
         in
         ("logging_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption_info v_encryption_info
         in
         ("encryption_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration_info
             v_configuration_info
         in
         ("configuration_info", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_client_authentication
             v_client_authentication
         in
         ("client_authentication", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_broker_node_group_info
             v_broker_node_group_info
         in
         ("broker_node_group_info", arg) :: bnds
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
         match v_storage_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_number_of_broker_nodes
         in
         ("number_of_broker_nodes", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kafka_version in
         ("kafka_version", arg) :: bnds
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
         match v_enhanced_monitoring with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "enhanced_monitoring", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_msk_cluster -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_msk_cluster

[@@@deriving.end]

let broker_node_group_info__connectivity_info__public_access ?type_
    () : broker_node_group_info__connectivity_info__public_access =
  { type_ }

let broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    ?iam ?scram () :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication__sasl
    =
  { iam; scram }

let broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    ?tls ?(sasl = []) () :
    broker_node_group_info__connectivity_info__vpc_connectivity__client_authentication
    =
  { tls; sasl }

let broker_node_group_info__connectivity_info__vpc_connectivity
    ?(client_authentication = []) () :
    broker_node_group_info__connectivity_info__vpc_connectivity =
  { client_authentication }

let broker_node_group_info__connectivity_info ?(public_access = [])
    ?(vpc_connectivity = []) () :
    broker_node_group_info__connectivity_info =
  { public_access; vpc_connectivity }

let broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    ?enabled ?volume_throughput () :
    broker_node_group_info__storage_info__ebs_storage_info__provisioned_throughput
    =
  { enabled; volume_throughput }

let broker_node_group_info__storage_info__ebs_storage_info
    ?volume_size ?(provisioned_throughput = []) () :
    broker_node_group_info__storage_info__ebs_storage_info =
  { volume_size; provisioned_throughput }

let broker_node_group_info__storage_info ?(ebs_storage_info = []) ()
    : broker_node_group_info__storage_info =
  { ebs_storage_info }

let broker_node_group_info ?az_distribution ?(connectivity_info = [])
    ?(storage_info = []) ~client_subnets ~instance_type
    ~security_groups () : broker_node_group_info =
  {
    az_distribution;
    client_subnets;
    instance_type;
    security_groups;
    connectivity_info;
    storage_info;
  }

let client_authentication__sasl ?iam ?scram () :
    client_authentication__sasl =
  { iam; scram }

let client_authentication__tls ?certificate_authority_arns () :
    client_authentication__tls =
  { certificate_authority_arns }

let client_authentication ?unauthenticated ?(sasl = []) ?(tls = [])
    () : client_authentication =
  { unauthenticated; sasl; tls }

let configuration_info ~arn ~revision () : configuration_info =
  { arn; revision }

let encryption_info__encryption_in_transit ?client_broker ?in_cluster
    () : encryption_info__encryption_in_transit =
  { client_broker; in_cluster }

let encryption_info ?encryption_at_rest_kms_key_arn
    ?(encryption_in_transit = []) () : encryption_info =
  { encryption_at_rest_kms_key_arn; encryption_in_transit }

let logging_info__broker_logs__cloudwatch_logs ?log_group ~enabled ()
    : logging_info__broker_logs__cloudwatch_logs =
  { enabled; log_group }

let logging_info__broker_logs__firehose ?delivery_stream ~enabled ()
    : logging_info__broker_logs__firehose =
  { delivery_stream; enabled }

let logging_info__broker_logs__s3 ?bucket ?prefix ~enabled () :
    logging_info__broker_logs__s3 =
  { bucket; enabled; prefix }

let logging_info__broker_logs ?(cloudwatch_logs = [])
    ?(firehose = []) ?(s3 = []) () : logging_info__broker_logs =
  { cloudwatch_logs; firehose; s3 }

let logging_info ~broker_logs () : logging_info = { broker_logs }

let open_monitoring__prometheus__jmx_exporter ~enabled_in_broker () :
    open_monitoring__prometheus__jmx_exporter =
  { enabled_in_broker }

let open_monitoring__prometheus__node_exporter ~enabled_in_broker ()
    : open_monitoring__prometheus__node_exporter =
  { enabled_in_broker }

let open_monitoring__prometheus ?(jmx_exporter = [])
    ?(node_exporter = []) () : open_monitoring__prometheus =
  { jmx_exporter; node_exporter }

let open_monitoring ~prometheus () : open_monitoring = { prometheus }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_msk_cluster ?enhanced_monitoring ?id ?storage_mode ?tags
    ?tags_all ?(client_authentication = [])
    ?(configuration_info = []) ?(encryption_info = [])
    ?(logging_info = []) ?(open_monitoring = []) ?timeouts
    ~cluster_name ~kafka_version ~number_of_broker_nodes
    ~broker_node_group_info () : aws_msk_cluster =
  {
    cluster_name;
    enhanced_monitoring;
    id;
    kafka_version;
    number_of_broker_nodes;
    storage_mode;
    tags;
    tags_all;
    broker_node_group_info;
    client_authentication;
    configuration_info;
    encryption_info;
    logging_info;
    open_monitoring;
    timeouts;
  }

type t = {
  arn : string prop;
  bootstrap_brokers : string prop;
  bootstrap_brokers_public_sasl_iam : string prop;
  bootstrap_brokers_public_sasl_scram : string prop;
  bootstrap_brokers_public_tls : string prop;
  bootstrap_brokers_sasl_iam : string prop;
  bootstrap_brokers_sasl_scram : string prop;
  bootstrap_brokers_tls : string prop;
  bootstrap_brokers_vpc_connectivity_sasl_iam : string prop;
  bootstrap_brokers_vpc_connectivity_sasl_scram : string prop;
  bootstrap_brokers_vpc_connectivity_tls : string prop;
  cluster_name : string prop;
  cluster_uuid : string prop;
  current_version : string prop;
  enhanced_monitoring : string prop;
  id : string prop;
  kafka_version : string prop;
  number_of_broker_nodes : float prop;
  storage_mode : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  zookeeper_connect_string : string prop;
  zookeeper_connect_string_tls : string prop;
}

let make ?enhanced_monitoring ?id ?storage_mode ?tags ?tags_all
    ?(client_authentication = []) ?(configuration_info = [])
    ?(encryption_info = []) ?(logging_info = [])
    ?(open_monitoring = []) ?timeouts ~cluster_name ~kafka_version
    ~number_of_broker_nodes ~broker_node_group_info __id =
  let __type = "aws_msk_cluster" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       bootstrap_brokers =
         Prop.computed __type __id "bootstrap_brokers";
       bootstrap_brokers_public_sasl_iam =
         Prop.computed __type __id
           "bootstrap_brokers_public_sasl_iam";
       bootstrap_brokers_public_sasl_scram =
         Prop.computed __type __id
           "bootstrap_brokers_public_sasl_scram";
       bootstrap_brokers_public_tls =
         Prop.computed __type __id "bootstrap_brokers_public_tls";
       bootstrap_brokers_sasl_iam =
         Prop.computed __type __id "bootstrap_brokers_sasl_iam";
       bootstrap_brokers_sasl_scram =
         Prop.computed __type __id "bootstrap_brokers_sasl_scram";
       bootstrap_brokers_tls =
         Prop.computed __type __id "bootstrap_brokers_tls";
       bootstrap_brokers_vpc_connectivity_sasl_iam =
         Prop.computed __type __id
           "bootstrap_brokers_vpc_connectivity_sasl_iam";
       bootstrap_brokers_vpc_connectivity_sasl_scram =
         Prop.computed __type __id
           "bootstrap_brokers_vpc_connectivity_sasl_scram";
       bootstrap_brokers_vpc_connectivity_tls =
         Prop.computed __type __id
           "bootstrap_brokers_vpc_connectivity_tls";
       cluster_name = Prop.computed __type __id "cluster_name";
       cluster_uuid = Prop.computed __type __id "cluster_uuid";
       current_version = Prop.computed __type __id "current_version";
       enhanced_monitoring =
         Prop.computed __type __id "enhanced_monitoring";
       id = Prop.computed __type __id "id";
       kafka_version = Prop.computed __type __id "kafka_version";
       number_of_broker_nodes =
         Prop.computed __type __id "number_of_broker_nodes";
       storage_mode = Prop.computed __type __id "storage_mode";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       zookeeper_connect_string =
         Prop.computed __type __id "zookeeper_connect_string";
       zookeeper_connect_string_tls =
         Prop.computed __type __id "zookeeper_connect_string_tls";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_cluster
        (aws_msk_cluster ?enhanced_monitoring ?id ?storage_mode ?tags
           ?tags_all ~client_authentication ~configuration_info
           ~encryption_info ~logging_info ~open_monitoring ?timeouts
           ~cluster_name ~kafka_version ~number_of_broker_nodes
           ~broker_node_group_info ());
    attrs = __attrs;
  }

let register ?tf_module ?enhanced_monitoring ?id ?storage_mode ?tags
    ?tags_all ?(client_authentication = [])
    ?(configuration_info = []) ?(encryption_info = [])
    ?(logging_info = []) ?(open_monitoring = []) ?timeouts
    ~cluster_name ~kafka_version ~number_of_broker_nodes
    ~broker_node_group_info __id =
  let (r : _ Tf_core.resource) =
    make ?enhanced_monitoring ?id ?storage_mode ?tags ?tags_all
      ~client_authentication ~configuration_info ~encryption_info
      ~logging_info ~open_monitoring ?timeouts ~cluster_name
      ~kafka_version ~number_of_broker_nodes ~broker_node_group_info
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
