(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lb_trust_store__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_lb_trust_store__timeouts *)

type aws_lb_trust_store = {
  ca_certificates_bundle_s3_bucket : string;
      (** ca_certificates_bundle_s3_bucket *)
  ca_certificates_bundle_s3_key : string;
      (** ca_certificates_bundle_s3_key *)
  ca_certificates_bundle_s3_object_version : string option; [@option]
      (** ca_certificates_bundle_s3_object_version *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_lb_trust_store__timeouts option;
}
[@@deriving yojson_of]
(** aws_lb_trust_store *)

let aws_lb_trust_store ?ca_certificates_bundle_s3_object_version
    ?tags ?timeouts ~ca_certificates_bundle_s3_bucket
    ~ca_certificates_bundle_s3_key __resource_id =
  let __resource_type = "aws_lb_trust_store" in
  let __resource =
    {
      ca_certificates_bundle_s3_bucket;
      ca_certificates_bundle_s3_key;
      ca_certificates_bundle_s3_object_version;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lb_trust_store __resource);
  ()
