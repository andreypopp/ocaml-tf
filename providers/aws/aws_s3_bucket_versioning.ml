(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type versioning_configuration = {
  mfa_delete : string prop option; [@option]  (** mfa_delete *)
  status : string prop;  (** status *)
}
[@@deriving yojson_of]
(** versioning_configuration *)

type aws_s3_bucket_versioning = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  mfa : string prop option; [@option]  (** mfa *)
  versioning_configuration : versioning_configuration list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_versioning *)

let versioning_configuration ?mfa_delete ~status () :
    versioning_configuration =
  { mfa_delete; status }

let aws_s3_bucket_versioning ?expected_bucket_owner ?id ?mfa ~bucket
    ~versioning_configuration () : aws_s3_bucket_versioning =
  {
    bucket;
    expected_bucket_owner;
    id;
    mfa;
    versioning_configuration;
  }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  mfa : string prop;
}

let make ?expected_bucket_owner ?id ?mfa ~bucket
    ~versioning_configuration __id =
  let __type = "aws_s3_bucket_versioning" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
       mfa = Prop.computed __type __id "mfa";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_versioning
        (aws_s3_bucket_versioning ?expected_bucket_owner ?id ?mfa
           ~bucket ~versioning_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id ?mfa ~bucket
    ~versioning_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ?mfa ~bucket
      ~versioning_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
