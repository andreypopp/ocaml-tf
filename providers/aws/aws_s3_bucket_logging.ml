(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_grant__grantee = {
  email_address : string prop option; [@option]  (** email_address *)
  id : string prop option; [@option]  (** id *)
  type_ : string prop; [@key "type"]  (** type *)
  uri : string prop option; [@option]  (** uri *)
}
[@@deriving yojson_of]
(** target_grant__grantee *)

type target_grant = {
  permission : string prop;  (** permission *)
  grantee : target_grant__grantee list;
}
[@@deriving yojson_of]
(** target_grant *)

type target_object_key_format__partitioned_prefix = {
  partition_date_source : string prop;  (** partition_date_source *)
}
[@@deriving yojson_of]
(** target_object_key_format__partitioned_prefix *)

type target_object_key_format__simple_prefix = unit
[@@deriving yojson_of]

type target_object_key_format = {
  partitioned_prefix :
    target_object_key_format__partitioned_prefix list;
  simple_prefix : target_object_key_format__simple_prefix list;
}
[@@deriving yojson_of]
(** target_object_key_format *)

type aws_s3_bucket_logging = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  target_bucket : string prop;  (** target_bucket *)
  target_prefix : string prop;  (** target_prefix *)
  target_grant : target_grant list;
  target_object_key_format : target_object_key_format list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_logging *)

let target_grant__grantee ?email_address ?id ?uri ~type_ () :
    target_grant__grantee =
  { email_address; id; type_; uri }

let target_grant ~permission ~grantee () : target_grant =
  { permission; grantee }

let target_object_key_format__partitioned_prefix
    ~partition_date_source () :
    target_object_key_format__partitioned_prefix =
  { partition_date_source }

let target_object_key_format__simple_prefix () = ()

let target_object_key_format ~partitioned_prefix ~simple_prefix () :
    target_object_key_format =
  { partitioned_prefix; simple_prefix }

let aws_s3_bucket_logging ?expected_bucket_owner ?id ~bucket
    ~target_bucket ~target_prefix ~target_grant
    ~target_object_key_format () : aws_s3_bucket_logging =
  {
    bucket;
    expected_bucket_owner;
    id;
    target_bucket;
    target_prefix;
    target_grant;
    target_object_key_format;
  }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  target_bucket : string prop;
  target_prefix : string prop;
}

let make ?expected_bucket_owner ?id ~bucket ~target_bucket
    ~target_prefix ~target_grant ~target_object_key_format __id =
  let __type = "aws_s3_bucket_logging" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
       target_bucket = Prop.computed __type __id "target_bucket";
       target_prefix = Prop.computed __type __id "target_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_logging
        (aws_s3_bucket_logging ?expected_bucket_owner ?id ~bucket
           ~target_bucket ~target_prefix ~target_grant
           ~target_object_key_format ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ~bucket
    ~target_bucket ~target_prefix ~target_grant
    ~target_object_key_format __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ~bucket ~target_bucket
      ~target_prefix ~target_grant ~target_object_key_format __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
