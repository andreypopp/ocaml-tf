(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type attribute = {
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** attribute *)

type global_secondary_index = {
  hash_key : string prop;  (** hash_key *)
  name : string prop;  (** name *)
  non_key_attributes : string prop list option; [@option]
      (** non_key_attributes *)
  projection_type : string prop;  (** projection_type *)
  range_key : string prop option; [@option]  (** range_key *)
  read_capacity : float prop option; [@option]  (** read_capacity *)
  write_capacity : float prop option; [@option]  (** write_capacity *)
}
[@@deriving yojson_of]
(** global_secondary_index *)

type import_table__input_format_options__csv = {
  delimiter : string prop option; [@option]  (** delimiter *)
  header_list : string prop list option; [@option]  (** header_list *)
}
[@@deriving yojson_of]
(** import_table__input_format_options__csv *)

type import_table__input_format_options = {
  csv : import_table__input_format_options__csv list;
}
[@@deriving yojson_of]
(** import_table__input_format_options *)

type import_table__s3_bucket_source = {
  bucket : string prop;  (** bucket *)
  bucket_owner : string prop option; [@option]  (** bucket_owner *)
  key_prefix : string prop option; [@option]  (** key_prefix *)
}
[@@deriving yojson_of]
(** import_table__s3_bucket_source *)

type import_table = {
  input_compression_type : string prop option; [@option]
      (** input_compression_type *)
  input_format : string prop;  (** input_format *)
  input_format_options : import_table__input_format_options list;
  s3_bucket_source : import_table__s3_bucket_source list;
}
[@@deriving yojson_of]
(** import_table *)

type local_secondary_index = {
  name : string prop;  (** name *)
  non_key_attributes : string prop list option; [@option]
      (** non_key_attributes *)
  projection_type : string prop;  (** projection_type *)
  range_key : string prop;  (** range_key *)
}
[@@deriving yojson_of]
(** local_secondary_index *)

type point_in_time_recovery = { enabled : bool prop  (** enabled *) }
[@@deriving yojson_of]
(** point_in_time_recovery *)

type replica = {
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  point_in_time_recovery : bool prop option; [@option]
      (** point_in_time_recovery *)
  propagate_tags : bool prop option; [@option]  (** propagate_tags *)
  region_name : string prop;  (** region_name *)
}
[@@deriving yojson_of]
(** replica *)

type server_side_encryption = {
  enabled : bool prop;  (** enabled *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** server_side_encryption *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type ttl = {
  attribute_name : string prop;  (** attribute_name *)
  enabled : bool prop option; [@option]  (** enabled *)
}
[@@deriving yojson_of]
(** ttl *)

type aws_dynamodb_table = {
  billing_mode : string prop option; [@option]  (** billing_mode *)
  deletion_protection_enabled : bool prop option; [@option]
      (** deletion_protection_enabled *)
  hash_key : string prop option; [@option]  (** hash_key *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  range_key : string prop option; [@option]  (** range_key *)
  read_capacity : float prop option; [@option]  (** read_capacity *)
  restore_date_time : string prop option; [@option]
      (** restore_date_time *)
  restore_source_name : string prop option; [@option]
      (** restore_source_name *)
  restore_to_latest_time : bool prop option; [@option]
      (** restore_to_latest_time *)
  stream_enabled : bool prop option; [@option]  (** stream_enabled *)
  stream_view_type : string prop option; [@option]
      (** stream_view_type *)
  table_class : string prop option; [@option]  (** table_class *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  write_capacity : float prop option; [@option]
      (** write_capacity *)
  attribute : attribute list;
  global_secondary_index : global_secondary_index list;
  import_table : import_table list;
  local_secondary_index : local_secondary_index list;
  point_in_time_recovery : point_in_time_recovery list;
  replica : replica list;
  server_side_encryption : server_side_encryption list;
  timeouts : timeouts option;
  ttl : ttl list;
}
[@@deriving yojson_of]
(** aws_dynamodb_table *)

let attribute ~name ~type_ () : attribute = { name; type_ }

let global_secondary_index ?non_key_attributes ?range_key
    ?read_capacity ?write_capacity ~hash_key ~name ~projection_type
    () : global_secondary_index =
  {
    hash_key;
    name;
    non_key_attributes;
    projection_type;
    range_key;
    read_capacity;
    write_capacity;
  }

let import_table__input_format_options__csv ?delimiter ?header_list
    () : import_table__input_format_options__csv =
  { delimiter; header_list }

let import_table__input_format_options ~csv () :
    import_table__input_format_options =
  { csv }

let import_table__s3_bucket_source ?bucket_owner ?key_prefix ~bucket
    () : import_table__s3_bucket_source =
  { bucket; bucket_owner; key_prefix }

let import_table ?input_compression_type ~input_format
    ~input_format_options ~s3_bucket_source () : import_table =
  {
    input_compression_type;
    input_format;
    input_format_options;
    s3_bucket_source;
  }

let local_secondary_index ?non_key_attributes ~name ~projection_type
    ~range_key () : local_secondary_index =
  { name; non_key_attributes; projection_type; range_key }

let point_in_time_recovery ~enabled () : point_in_time_recovery =
  { enabled }

let replica ?kms_key_arn ?point_in_time_recovery ?propagate_tags
    ~region_name () : replica =
  {
    kms_key_arn;
    point_in_time_recovery;
    propagate_tags;
    region_name;
  }

let server_side_encryption ?kms_key_arn ~enabled () :
    server_side_encryption =
  { enabled; kms_key_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let ttl ?enabled ~attribute_name () : ttl =
  { attribute_name; enabled }

let aws_dynamodb_table ?billing_mode ?deletion_protection_enabled
    ?hash_key ?id ?range_key ?read_capacity ?restore_date_time
    ?restore_source_name ?restore_to_latest_time ?stream_enabled
    ?stream_view_type ?table_class ?tags ?tags_all ?write_capacity
    ?timeouts ~name ~attribute ~global_secondary_index ~import_table
    ~local_secondary_index ~point_in_time_recovery ~replica
    ~server_side_encryption ~ttl () : aws_dynamodb_table =
  {
    billing_mode;
    deletion_protection_enabled;
    hash_key;
    id;
    name;
    range_key;
    read_capacity;
    restore_date_time;
    restore_source_name;
    restore_to_latest_time;
    stream_enabled;
    stream_view_type;
    table_class;
    tags;
    tags_all;
    write_capacity;
    attribute;
    global_secondary_index;
    import_table;
    local_secondary_index;
    point_in_time_recovery;
    replica;
    server_side_encryption;
    timeouts;
    ttl;
  }

type t = {
  arn : string prop;
  billing_mode : string prop;
  deletion_protection_enabled : bool prop;
  hash_key : string prop;
  id : string prop;
  name : string prop;
  range_key : string prop;
  read_capacity : float prop;
  restore_date_time : string prop;
  restore_source_name : string prop;
  restore_to_latest_time : bool prop;
  stream_arn : string prop;
  stream_enabled : bool prop;
  stream_label : string prop;
  stream_view_type : string prop;
  table_class : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  write_capacity : float prop;
}

let register ?tf_module ?billing_mode ?deletion_protection_enabled
    ?hash_key ?id ?range_key ?read_capacity ?restore_date_time
    ?restore_source_name ?restore_to_latest_time ?stream_enabled
    ?stream_view_type ?table_class ?tags ?tags_all ?write_capacity
    ?timeouts ~name ~attribute ~global_secondary_index ~import_table
    ~local_secondary_index ~point_in_time_recovery ~replica
    ~server_side_encryption ~ttl __resource_id =
  let __resource_type = "aws_dynamodb_table" in
  let __resource =
    aws_dynamodb_table ?billing_mode ?deletion_protection_enabled
      ?hash_key ?id ?range_key ?read_capacity ?restore_date_time
      ?restore_source_name ?restore_to_latest_time ?stream_enabled
      ?stream_view_type ?table_class ?tags ?tags_all ?write_capacity
      ?timeouts ~name ~attribute ~global_secondary_index
      ~import_table ~local_secondary_index ~point_in_time_recovery
      ~replica ~server_side_encryption ~ttl ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dynamodb_table __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       billing_mode =
         Prop.computed __resource_type __resource_id "billing_mode";
       deletion_protection_enabled =
         Prop.computed __resource_type __resource_id
           "deletion_protection_enabled";
       hash_key =
         Prop.computed __resource_type __resource_id "hash_key";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       range_key =
         Prop.computed __resource_type __resource_id "range_key";
       read_capacity =
         Prop.computed __resource_type __resource_id "read_capacity";
       restore_date_time =
         Prop.computed __resource_type __resource_id
           "restore_date_time";
       restore_source_name =
         Prop.computed __resource_type __resource_id
           "restore_source_name";
       restore_to_latest_time =
         Prop.computed __resource_type __resource_id
           "restore_to_latest_time";
       stream_arn =
         Prop.computed __resource_type __resource_id "stream_arn";
       stream_enabled =
         Prop.computed __resource_type __resource_id "stream_enabled";
       stream_label =
         Prop.computed __resource_type __resource_id "stream_label";
       stream_view_type =
         Prop.computed __resource_type __resource_id
           "stream_view_type";
       table_class =
         Prop.computed __resource_type __resource_id "table_class";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       write_capacity =
         Prop.computed __resource_type __resource_id "write_capacity";
     }
      : t)
  in
  __resource_attributes
