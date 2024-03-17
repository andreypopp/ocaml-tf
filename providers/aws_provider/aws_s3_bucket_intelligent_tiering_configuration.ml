(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_intelligent_tiering_configuration__filter = {
  prefix : string option; [@option]  (** prefix *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_intelligent_tiering_configuration__filter *)

type aws_s3_bucket_intelligent_tiering_configuration__tiering = {
  access_tier : string;  (** access_tier *)
  days : float;  (** days *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_intelligent_tiering_configuration__tiering *)

type aws_s3_bucket_intelligent_tiering_configuration = {
  bucket : string;  (** bucket *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  status : string option; [@option]  (** status *)
  filter :
    aws_s3_bucket_intelligent_tiering_configuration__filter list;
  tiering :
    aws_s3_bucket_intelligent_tiering_configuration__tiering list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_intelligent_tiering_configuration *)

let aws_s3_bucket_intelligent_tiering_configuration ?id ?status
    ~bucket ~name ~filter ~tiering __resource_id =
  let __resource_type =
    "aws_s3_bucket_intelligent_tiering_configuration"
  in
  let __resource = { bucket; id; name; status; filter; tiering } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3_bucket_intelligent_tiering_configuration
       __resource);
  ()
