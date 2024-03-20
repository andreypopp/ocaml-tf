(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_logs__cloudwatch_logs = {
  enabled : bool prop;  (** enabled *)
  log_group : string prop option; [@option]  (** log_group *)
}
[@@deriving yojson_of]
(** access_logs__cloudwatch_logs *)

type access_logs__kinesis_data_firehose = {
  delivery_stream : string prop option; [@option]
      (** delivery_stream *)
  enabled : bool prop;  (** enabled *)
}
[@@deriving yojson_of]
(** access_logs__kinesis_data_firehose *)

type access_logs__s3 = {
  bucket_name : string prop option; [@option]  (** bucket_name *)
  bucket_owner : string prop option; [@option]  (** bucket_owner *)
  enabled : bool prop;  (** enabled *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** access_logs__s3 *)

type access_logs = {
  include_trust_context : bool prop option; [@option]
      (** include_trust_context *)
  log_version : string prop option; [@option]  (** log_version *)
  cloudwatch_logs : access_logs__cloudwatch_logs list;
  kinesis_data_firehose : access_logs__kinesis_data_firehose list;
  s3 : access_logs__s3 list;
}
[@@deriving yojson_of]
(** access_logs *)

type aws_verifiedaccess_instance_logging_configuration = {
  id : string prop option; [@option]  (** id *)
  verifiedaccess_instance_id : string prop;
      (** verifiedaccess_instance_id *)
  access_logs : access_logs list;
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance_logging_configuration *)

let access_logs__cloudwatch_logs ?log_group ~enabled () :
    access_logs__cloudwatch_logs =
  { enabled; log_group }

let access_logs__kinesis_data_firehose ?delivery_stream ~enabled () :
    access_logs__kinesis_data_firehose =
  { delivery_stream; enabled }

let access_logs__s3 ?bucket_name ?bucket_owner ?prefix ~enabled () :
    access_logs__s3 =
  { bucket_name; bucket_owner; enabled; prefix }

let access_logs ?include_trust_context ?log_version ~cloudwatch_logs
    ~kinesis_data_firehose ~s3 () : access_logs =
  {
    include_trust_context;
    log_version;
    cloudwatch_logs;
    kinesis_data_firehose;
    s3;
  }

let aws_verifiedaccess_instance_logging_configuration ?id
    ~verifiedaccess_instance_id ~access_logs () :
    aws_verifiedaccess_instance_logging_configuration =
  { id; verifiedaccess_instance_id; access_logs }

type t = {
  id : string prop;
  verifiedaccess_instance_id : string prop;
}

let make ?id ~verifiedaccess_instance_id ~access_logs __id =
  let __type = "aws_verifiedaccess_instance_logging_configuration" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       verifiedaccess_instance_id =
         Prop.computed __type __id "verifiedaccess_instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_instance_logging_configuration
        (aws_verifiedaccess_instance_logging_configuration ?id
           ~verifiedaccess_instance_id ~access_logs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~verifiedaccess_instance_id ~access_logs
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~verifiedaccess_instance_id ~access_logs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
