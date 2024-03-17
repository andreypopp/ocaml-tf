(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_trust_store__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_lb_trust_store__timeouts *)

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
  timeouts : aws_lb_trust_store__timeouts option;
}
[@@deriving yojson_of]
(** aws_lb_trust_store *)

let aws_lb_trust_store ?ca_certificates_bundle_s3_object_version ?id
    ?name ?name_prefix ?tags ?tags_all ?timeouts
    ~ca_certificates_bundle_s3_bucket ~ca_certificates_bundle_s3_key
    __resource_id =
  let __resource_type = "aws_lb_trust_store" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_trust_store __resource);
  ()
