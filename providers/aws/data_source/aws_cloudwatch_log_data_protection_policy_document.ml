(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type statement__operation__audit__findings_destination__cloudwatch_logs = {
  log_group : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       statement__operation__audit__findings_destination__cloudwatch_logs) ->
  ()

let yojson_of_statement__operation__audit__findings_destination__cloudwatch_logs
    =
  (function
   | { log_group = v_log_group } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_log_group in
         ("log_group", arg) :: bnds
       in
       `Assoc bnds
    : statement__operation__audit__findings_destination__cloudwatch_logs ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_statement__operation__audit__findings_destination__cloudwatch_logs

[@@@deriving.end]

type statement__operation__audit__findings_destination__firehose = {
  delivery_stream : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       statement__operation__audit__findings_destination__firehose) ->
  ()

let yojson_of_statement__operation__audit__findings_destination__firehose
    =
  (function
   | { delivery_stream = v_delivery_stream } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_delivery_stream
         in
         ("delivery_stream", arg) :: bnds
       in
       `Assoc bnds
    : statement__operation__audit__findings_destination__firehose ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_statement__operation__audit__findings_destination__firehose

[@@@deriving.end]

type statement__operation__audit__findings_destination__s3 = {
  bucket : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : statement__operation__audit__findings_destination__s3) ->
  ()

let yojson_of_statement__operation__audit__findings_destination__s3 =
  (function
   | { bucket = v_bucket } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : statement__operation__audit__findings_destination__s3 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_statement__operation__audit__findings_destination__s3

[@@@deriving.end]

type statement__operation__audit__findings_destination = {
  cloudwatch_logs :
    statement__operation__audit__findings_destination__cloudwatch_logs
    list;
  firehose :
    statement__operation__audit__findings_destination__firehose list;
  s3 : statement__operation__audit__findings_destination__s3 list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : statement__operation__audit__findings_destination) -> ()

let yojson_of_statement__operation__audit__findings_destination =
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
           yojson_of_list
             yojson_of_statement__operation__audit__findings_destination__s3
             v_s3
         in
         ("s3", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_statement__operation__audit__findings_destination__firehose
             v_firehose
         in
         ("firehose", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_statement__operation__audit__findings_destination__cloudwatch_logs
             v_cloudwatch_logs
         in
         ("cloudwatch_logs", arg) :: bnds
       in
       `Assoc bnds
    : statement__operation__audit__findings_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement__operation__audit__findings_destination

[@@@deriving.end]

type statement__operation__audit = {
  findings_destination :
    statement__operation__audit__findings_destination list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statement__operation__audit) -> ()

let yojson_of_statement__operation__audit =
  (function
   | { findings_destination = v_findings_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_statement__operation__audit__findings_destination
             v_findings_destination
         in
         ("findings_destination", arg) :: bnds
       in
       `Assoc bnds
    : statement__operation__audit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement__operation__audit

[@@@deriving.end]

type statement__operation__deidentify__mask_config = unit
[@@deriving_inline yojson_of]

let _ = fun (_ : statement__operation__deidentify__mask_config) -> ()

let yojson_of_statement__operation__deidentify__mask_config =
  (yojson_of_unit
    : statement__operation__deidentify__mask_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement__operation__deidentify__mask_config

[@@@deriving.end]

type statement__operation__deidentify = {
  mask_config : statement__operation__deidentify__mask_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statement__operation__deidentify) -> ()

let yojson_of_statement__operation__deidentify =
  (function
   | { mask_config = v_mask_config } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_statement__operation__deidentify__mask_config
             v_mask_config
         in
         ("mask_config", arg) :: bnds
       in
       `Assoc bnds
    : statement__operation__deidentify ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement__operation__deidentify

[@@@deriving.end]

type statement__operation = {
  audit : statement__operation__audit list;
  deidentify : statement__operation__deidentify list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statement__operation) -> ()

let yojson_of_statement__operation =
  (function
   | { audit = v_audit; deidentify = v_deidentify } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_statement__operation__deidentify
             v_deidentify
         in
         ("deidentify", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_statement__operation__audit
             v_audit
         in
         ("audit", arg) :: bnds
       in
       `Assoc bnds
    : statement__operation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement__operation

[@@@deriving.end]

type statement = {
  data_identifiers : string prop list;
  sid : string prop option; [@option]
  operation : statement__operation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : statement) -> ()

let yojson_of_statement =
  (function
   | {
       data_identifiers = v_data_identifiers;
       sid = v_sid;
       operation = v_operation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_statement__operation v_operation
         in
         ("operation", arg) :: bnds
       in
       let bnds =
         match v_sid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sid", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_data_identifiers
         in
         ("data_identifiers", arg) :: bnds
       in
       `Assoc bnds
    : statement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_statement

[@@@deriving.end]

type aws_cloudwatch_log_data_protection_policy_document = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  version : string prop option; [@option]
  statement : statement list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_cloudwatch_log_data_protection_policy_document) -> ()

let yojson_of_aws_cloudwatch_log_data_protection_policy_document =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       version = v_version;
       statement = v_statement;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_statement v_statement in
         ("statement", arg) :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_log_data_protection_policy_document ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_data_protection_policy_document

[@@@deriving.end]

let statement__operation__audit__findings_destination__cloudwatch_logs
    ~log_group () :
    statement__operation__audit__findings_destination__cloudwatch_logs
    =
  { log_group }

let statement__operation__audit__findings_destination__firehose
    ~delivery_stream () :
    statement__operation__audit__findings_destination__firehose =
  { delivery_stream }

let statement__operation__audit__findings_destination__s3 ~bucket ()
    : statement__operation__audit__findings_destination__s3 =
  { bucket }

let statement__operation__audit__findings_destination
    ?(cloudwatch_logs = []) ?(firehose = []) ?(s3 = []) () :
    statement__operation__audit__findings_destination =
  { cloudwatch_logs; firehose; s3 }

let statement__operation__audit ~findings_destination () :
    statement__operation__audit =
  { findings_destination }

let statement__operation__deidentify__mask_config () = ()

let statement__operation__deidentify ~mask_config () :
    statement__operation__deidentify =
  { mask_config }

let statement__operation ?(audit = []) ?(deidentify = []) () :
    statement__operation =
  { audit; deidentify }

let statement ?sid ~data_identifiers ~operation () : statement =
  { data_identifiers; sid; operation }

let aws_cloudwatch_log_data_protection_policy_document ?description
    ?id ?version ~name ~statement () :
    aws_cloudwatch_log_data_protection_policy_document =
  { description; id; name; version; statement }

type t = {
  description : string prop;
  id : string prop;
  json : string prop;
  name : string prop;
  version : string prop;
}

let make ?description ?id ?version ~name ~statement __id =
  let __type =
    "aws_cloudwatch_log_data_protection_policy_document"
  in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       json = Prop.computed __type __id "json";
       name = Prop.computed __type __id "name";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_data_protection_policy_document
        (aws_cloudwatch_log_data_protection_policy_document
           ?description ?id ?version ~name ~statement ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?version ~name ~statement
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?version ~name ~statement __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
