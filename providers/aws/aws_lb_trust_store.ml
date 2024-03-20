(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lb_trust_store = {
  ca_certificates_bundle_s3_bucket : string prop;
      (** ca_certificates_bundle_s3_bucket *)
  ca_certificates_bundle_s3_key : string prop;
      (** ca_certificates_bundle_s3_key *)
  ca_certificates_bundle_s3_object_version : string prop option;
      [@option]
      (** ca_certificates_bundle_s3_object_version *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lb_trust_store *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_lb_trust_store ?ca_certificates_bundle_s3_object_version ?id
    ?name ?name_prefix ?tags ?tags_all ?timeouts
    ~ca_certificates_bundle_s3_bucket ~ca_certificates_bundle_s3_key
    () : aws_lb_trust_store =
  {
    ca_certificates_bundle_s3_bucket;
    ca_certificates_bundle_s3_key;
    ca_certificates_bundle_s3_object_version;
    id;
    name;
    name_prefix;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  arn_suffix : string prop;
  ca_certificates_bundle_s3_bucket : string prop;
  ca_certificates_bundle_s3_key : string prop;
  ca_certificates_bundle_s3_object_version : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?ca_certificates_bundle_s3_object_version ?id ?name
    ?name_prefix ?tags ?tags_all ?timeouts
    ~ca_certificates_bundle_s3_bucket ~ca_certificates_bundle_s3_key
    __id =
  let __type = "aws_lb_trust_store" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       arn_suffix = Prop.computed __type __id "arn_suffix";
       ca_certificates_bundle_s3_bucket =
         Prop.computed __type __id "ca_certificates_bundle_s3_bucket";
       ca_certificates_bundle_s3_key =
         Prop.computed __type __id "ca_certificates_bundle_s3_key";
       ca_certificates_bundle_s3_object_version =
         Prop.computed __type __id
           "ca_certificates_bundle_s3_object_version";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lb_trust_store
        (aws_lb_trust_store ?ca_certificates_bundle_s3_object_version
           ?id ?name ?name_prefix ?tags ?tags_all ?timeouts
           ~ca_certificates_bundle_s3_bucket
           ~ca_certificates_bundle_s3_key ());
    attrs = __attrs;
  }

let register ?tf_module ?ca_certificates_bundle_s3_object_version ?id
    ?name ?name_prefix ?tags ?tags_all ?timeouts
    ~ca_certificates_bundle_s3_bucket ~ca_certificates_bundle_s3_key
    __id =
  let (r : _ Tf_core.resource) =
    make ?ca_certificates_bundle_s3_object_version ?id ?name
      ?name_prefix ?tags ?tags_all ?timeouts
      ~ca_certificates_bundle_s3_bucket
      ~ca_certificates_bundle_s3_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
