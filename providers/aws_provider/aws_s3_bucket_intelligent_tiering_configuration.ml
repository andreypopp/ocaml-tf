(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3_bucket_intelligent_tiering_configuration__filter = {
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_intelligent_tiering_configuration__filter *)

type aws_s3_bucket_intelligent_tiering_configuration__tiering = {
  access_tier : string prop;  (** access_tier *)
  days : float prop;  (** days *)
}
[@@deriving yojson_of]
(** aws_s3_bucket_intelligent_tiering_configuration__tiering *)

type aws_s3_bucket_intelligent_tiering_configuration = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  status : string prop option; [@option]  (** status *)
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
