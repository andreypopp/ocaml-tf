(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ingestion_data_source_settings__aws_kinesis = {
  aws_role_arn : string prop;
  consumer_arn : string prop;
  gcp_service_account : string prop;
  stream_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingestion_data_source_settings__aws_kinesis) -> ()

let yojson_of_ingestion_data_source_settings__aws_kinesis =
  (function
   | {
       aws_role_arn = v_aws_role_arn;
       consumer_arn = v_consumer_arn;
       gcp_service_account = v_gcp_service_account;
       stream_arn = v_stream_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_arn in
         ("stream_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_gcp_service_account
         in
         ("gcp_service_account", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_consumer_arn in
         ("consumer_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_aws_role_arn in
         ("aws_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : ingestion_data_source_settings__aws_kinesis ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingestion_data_source_settings__aws_kinesis

[@@@deriving.end]

type ingestion_data_source_settings = {
  aws_kinesis : ingestion_data_source_settings__aws_kinesis list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : ingestion_data_source_settings) -> ()

let yojson_of_ingestion_data_source_settings =
  (function
   | { aws_kinesis = v_aws_kinesis } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_aws_kinesis then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_ingestion_data_source_settings__aws_kinesis)
               v_aws_kinesis
           in
           let bnd = "aws_kinesis", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : ingestion_data_source_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ingestion_data_source_settings

[@@@deriving.end]

type message_storage_policy = {
  allowed_persistence_regions : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : message_storage_policy) -> ()

let yojson_of_message_storage_policy =
  (function
   | { allowed_persistence_regions = v_allowed_persistence_regions }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_allowed_persistence_regions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_allowed_persistence_regions
           in
           let bnd = "allowed_persistence_regions", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : message_storage_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_message_storage_policy

[@@@deriving.end]

type schema_settings = {
  encoding : string prop;
  schema : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : schema_settings) -> ()

let yojson_of_schema_settings =
  (function
   | { encoding = v_encoding; schema = v_schema } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_schema in
         ("schema", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_encoding in
         ("encoding", arg) :: bnds
       in
       `Assoc bnds
    : schema_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_schema_settings

[@@@deriving.end]

type google_pubsub_topic = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_pubsub_topic) -> ()

let yojson_of_google_pubsub_topic =
  (function
   | { id = v_id; name = v_name; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
       `Assoc bnds
    : google_pubsub_topic -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_pubsub_topic

[@@@deriving.end]

let google_pubsub_topic ?id ?project ~name () : google_pubsub_topic =
  { id; name; project }

type t = {
  tf_name : string;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  ingestion_data_source_settings :
    ingestion_data_source_settings list prop;
  kms_key_name : string prop;
  labels : string Tf_core.assoc prop;
  message_retention_duration : string prop;
  message_storage_policy : message_storage_policy list prop;
  name : string prop;
  project : string prop;
  schema_settings : schema_settings list prop;
  terraform_labels : string Tf_core.assoc prop;
}

let make ?id ?project ~name __id =
  let __type = "google_pubsub_topic" in
  let __attrs =
    ({
       tf_name = __id;
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       ingestion_data_source_settings =
         Prop.computed __type __id "ingestion_data_source_settings";
       kms_key_name = Prop.computed __type __id "kms_key_name";
       labels = Prop.computed __type __id "labels";
       message_retention_duration =
         Prop.computed __type __id "message_retention_duration";
       message_storage_policy =
         Prop.computed __type __id "message_storage_policy";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       schema_settings = Prop.computed __type __id "schema_settings";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_pubsub_topic
        (google_pubsub_topic ?id ?project ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?project ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
