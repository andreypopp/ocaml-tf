(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule__default_retention = {
  days : float prop option; [@option]  (** days *)
  mode : string prop option; [@option]  (** mode *)
  years : float prop option; [@option]  (** years *)
}
[@@deriving yojson_of]
(** rule__default_retention *)

type rule = { default_retention : rule__default_retention list }
[@@deriving yojson_of]
(** rule *)

type aws_s3_bucket_object_lock_configuration = {
  bucket : string prop;  (** bucket *)
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  id : string prop option; [@option]  (** id *)
  object_lock_enabled : string prop option; [@option]
      (** object_lock_enabled *)
  token : string prop option; [@option]  (** token *)
  rule : rule list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_object_lock_configuration *)

let rule__default_retention ?days ?mode ?years () :
    rule__default_retention =
  { days; mode; years }

let rule ~default_retention () : rule = { default_retention }

let aws_s3_bucket_object_lock_configuration ?expected_bucket_owner
    ?id ?object_lock_enabled ?token ~bucket ~rule () :
    aws_s3_bucket_object_lock_configuration =
  {
    bucket;
    expected_bucket_owner;
    id;
    object_lock_enabled;
    token;
    rule;
  }

type t = {
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
  object_lock_enabled : string prop;
  token : string prop;
}

let make ?expected_bucket_owner ?id ?object_lock_enabled ?token
    ~bucket ~rule __id =
  let __type = "aws_s3_bucket_object_lock_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
       object_lock_enabled =
         Prop.computed __type __id "object_lock_enabled";
       token = Prop.computed __type __id "token";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_object_lock_configuration
        (aws_s3_bucket_object_lock_configuration
           ?expected_bucket_owner ?id ?object_lock_enabled ?token
           ~bucket ~rule ());
    attrs = __attrs;
  }

let register ?tf_module ?expected_bucket_owner ?id
    ?object_lock_enabled ?token ~bucket ~rule __id =
  let (r : _ Tf_core.resource) =
    make ?expected_bucket_owner ?id ?object_lock_enabled ?token
      ~bucket ~rule __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
