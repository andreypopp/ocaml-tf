(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__apply_server_side_encryption_by_default = {
  kms_master_key_id : string prop option; [@option]
      (** kms_master_key_id *)
  sse_algorithm : string prop;  (** sse_algorithm *)
}
[@@deriving yojson_of]
(** rule__apply_server_side_encryption_by_default *)

type rule = {
  bucket_key_enabled : bool prop option; [@option]
      (** bucket_key_enabled *)
  apply_server_side_encryption_by_default :
    rule__apply_server_side_encryption_by_default list;
}
[@@deriving yojson_of]
(** rule *)

type aws_s3_bucket_server_side_encryption_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_server_side_encryption_configuration *)

let rule__apply_server_side_encryption_by_default ?kms_master_key_id
    ~sse_algorithm () : rule__apply_server_side_encryption_by_default
    =
  { kms_master_key_id; sse_algorithm }

let rule ?bucket_key_enabled ~apply_server_side_encryption_by_default
    () : rule =
  { bucket_key_enabled; apply_server_side_encryption_by_default }

let aws_s3_bucket_server_side_encryption_configuration
    ?expected_bucket_owner ?id ~bucket ~rule () :
    aws_s3_bucket_server_side_encryption_configuration =
  { bucket; expected_bucket_owner; id; rule }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let make ?expected_bucket_owner ?id ~bucket ~rule __id =
  let __type =
    "aws_s3_bucket_server_side_encryption_configuration"
  in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_server_side_encryption_configuration
        (aws_s3_bucket_server_side_encryption_configuration
           ?expected_bucket_owner ?id ~bucket ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ~bucket ~rule __id
    =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ~bucket ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
