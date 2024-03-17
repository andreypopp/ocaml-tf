(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_qldb_stream__kinesis_configuration = {
  aggregation_enabled : bool prop option; [@option]
      (** aggregation_enabled *)
  stream_arn : string prop;  (** stream_arn *)
}
[@@deriving yojson_of]
(** aws_qldb_stream__kinesis_configuration *)

type aws_qldb_stream__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_qldb_stream__timeouts *)

type aws_qldb_stream = {
  exclusive_end_time : string prop option; [@option]
      (** exclusive_end_time *)
  id : string prop option; [@option]  (** id *)
  inclusive_start_time : string prop;  (** inclusive_start_time *)
  ledger_name : string prop;  (** ledger_name *)
  role_arn : string prop;  (** role_arn *)
  stream_name : string prop;  (** stream_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  kinesis_configuration :
    aws_qldb_stream__kinesis_configuration list;
  timeouts : aws_qldb_stream__timeouts option;
}
[@@deriving yojson_of]
(** aws_qldb_stream *)

type t = {
  arn : string prop;
  exclusive_end_time : string prop;
  id : string prop;
  inclusive_start_time : string prop;
  ledger_name : string prop;
  role_arn : string prop;
  stream_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_qldb_stream ?exclusive_end_time ?id ?tags ?tags_all ?timeouts
    ~inclusive_start_time ~ledger_name ~role_arn ~stream_name
    ~kinesis_configuration __resource_id =
  let __resource_type = "aws_qldb_stream" in
  let __resource =
    ({
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
      : aws_qldb_stream)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_qldb_stream __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       exclusive_end_time =
         Prop.computed __resource_type __resource_id
           "exclusive_end_time";
       id = Prop.computed __resource_type __resource_id "id";
       inclusive_start_time =
         Prop.computed __resource_type __resource_id
           "inclusive_start_time";
       ledger_name =
         Prop.computed __resource_type __resource_id "ledger_name";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       stream_name =
         Prop.computed __resource_type __resource_id "stream_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
