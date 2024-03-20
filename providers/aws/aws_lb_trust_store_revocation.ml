(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lb_trust_store_revocation = {
  id : string prop option; [@option]  (** id *)
  revocations_s3_bucket : string prop;  (** revocations_s3_bucket *)
  revocations_s3_key : string prop;  (** revocations_s3_key *)
  revocations_s3_object_version : string prop option; [@option]
      (** revocations_s3_object_version *)
  trust_store_arn : string prop;  (** trust_store_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lb_trust_store_revocation *)

let timeouts ?create () : timeouts = { create }

let aws_lb_trust_store_revocation ?id ?revocations_s3_object_version
    ?timeouts ~revocations_s3_bucket ~revocations_s3_key
    ~trust_store_arn () : aws_lb_trust_store_revocation =
  {
    id;
    revocations_s3_bucket;
    revocations_s3_key;
    revocations_s3_object_version;
    trust_store_arn;
    timeouts;
  }

type t = {
  id : string prop;
  revocation_id : float prop;
  revocations_s3_bucket : string prop;
  revocations_s3_key : string prop;
  revocations_s3_object_version : string prop;
  trust_store_arn : string prop;
}

let make ?id ?revocations_s3_object_version ?timeouts
    ~revocations_s3_bucket ~revocations_s3_key ~trust_store_arn __id
    =
  let __type = "aws_lb_trust_store_revocation" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       revocation_id = Prop.computed __type __id "revocation_id";
       revocations_s3_bucket =
         Prop.computed __type __id "revocations_s3_bucket";
       revocations_s3_key =
         Prop.computed __type __id "revocations_s3_key";
       revocations_s3_object_version =
         Prop.computed __type __id "revocations_s3_object_version";
       trust_store_arn = Prop.computed __type __id "trust_store_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_trust_store_revocation
        (aws_lb_trust_store_revocation ?id
           ?revocations_s3_object_version ?timeouts
           ~revocations_s3_bucket ~revocations_s3_key
           ~trust_store_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?revocations_s3_object_version ?timeouts
    ~revocations_s3_bucket ~revocations_s3_key ~trust_store_arn __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?revocations_s3_object_version ?timeouts
      ~revocations_s3_bucket ~revocations_s3_key ~trust_store_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
