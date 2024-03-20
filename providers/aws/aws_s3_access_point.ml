(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type public_access_block_configuration = {
  block_public_acls : bool prop option; [@option]
      (** block_public_acls *)
  block_public_policy : bool prop option; [@option]
      (** block_public_policy *)
  ignore_public_acls : bool prop option; [@option]
      (** ignore_public_acls *)
  restrict_public_buckets : bool prop option; [@option]
      (** restrict_public_buckets *)
}
[@@deriving yojson_of]
(** public_access_block_configuration *)

type vpc_configuration = { vpc_id : string prop  (** vpc_id *) }
[@@deriving yojson_of]
(** vpc_configuration *)

type aws_s3_access_point = {
  account_id : string prop option; [@option]  (** account_id *)
  bucket : string prop;  (** bucket *)
  bucket_account_id : string prop option; [@option]
      (** bucket_account_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  policy : string prop option; [@option]  (** policy *)
  public_access_block_configuration :
    public_access_block_configuration list;
  vpc_configuration : vpc_configuration list;
}
[@@deriving yojson_of]
(** aws_s3_access_point *)

let public_access_block_configuration ?block_public_acls
    ?block_public_policy ?ignore_public_acls ?restrict_public_buckets
    () : public_access_block_configuration =
  {
    block_public_acls;
    block_public_policy;
    ignore_public_acls;
    restrict_public_buckets;
  }

let vpc_configuration ~vpc_id () : vpc_configuration = { vpc_id }

let aws_s3_access_point ?account_id ?bucket_account_id ?id ?policy
    ~bucket ~name ~public_access_block_configuration
    ~vpc_configuration () : aws_s3_access_point =
  {
    account_id;
    bucket;
    bucket_account_id;
    id;
    name;
    policy;
    public_access_block_configuration;
    vpc_configuration;
  }

type t = {
  account_id : string prop;
  alias : string prop;
  arn : string prop;
  bucket : string prop;
  bucket_account_id : string prop;
  domain_name : string prop;
  endpoints : (string * string) list prop;
  has_public_access_policy : bool prop;
  id : string prop;
  name : string prop;
  network_origin : string prop;
  policy : string prop;
}

let make ?account_id ?bucket_account_id ?id ?policy ~bucket ~name
    ~public_access_block_configuration ~vpc_configuration __id =
  let __type = "aws_s3_access_point" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       bucket = Prop.computed __type __id "bucket";
       bucket_account_id =
         Prop.computed __type __id "bucket_account_id";
       domain_name = Prop.computed __type __id "domain_name";
       endpoints = Prop.computed __type __id "endpoints";
       has_public_access_policy =
         Prop.computed __type __id "has_public_access_policy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       network_origin = Prop.computed __type __id "network_origin";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_access_point
        (aws_s3_access_point ?account_id ?bucket_account_id ?id
           ?policy ~bucket ~name ~public_access_block_configuration
           ~vpc_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?bucket_account_id ?id ?policy
    ~bucket ~name ~public_access_block_configuration
    ~vpc_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?bucket_account_id ?id ?policy ~bucket ~name
      ~public_access_block_configuration ~vpc_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
