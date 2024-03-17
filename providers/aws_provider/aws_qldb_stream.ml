(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_qldb_stream__kinesis_configuration = {
  aggregation_enabled : bool option; [@option]
      (** aggregation_enabled *)
  stream_arn : string;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_qldb_stream__kinesis_configuration *)

type aws_qldb_stream__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_qldb_stream__timeouts *)

type aws_qldb_stream = {
  exclusive_end_time : string option; [@option]
      (** exclusive_end_time *)
  id : string option; [@option]  (** id *)
  inclusive_start_time : string;  (** inclusive_start_time *)
  ledger_name : string;  (** ledger_name *)
  role_arn : string;  (** role_arn *)
  stream_name : string;  (** stream_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  kinesis_configuration :
    aws_qldb_stream__kinesis_configuration list;
  timeouts : aws_qldb_stream__timeouts option;
}
[@@deriving yojson_of]
(** aws_qldb_stream *)

let aws_qldb_stream ?exclusive_end_time ?id ?tags ?tags_all ?timeouts
    ~inclusive_start_time ~ledger_name ~role_arn ~stream_name
    ~kinesis_configuration __resource_id =
  let __resource_type = "aws_qldb_stream" in
  let __resource =
    {
      exclusive_end_time;
      id;
      inclusive_start_time;
      ledger_name;
      role_arn;
      stream_name;
      tags;
      tags_all;
      kinesis_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_qldb_stream __resource);
  ()
