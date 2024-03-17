(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_multi_region_access_point__details__public_access_block = {
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
(** aws_s3control_multi_region_access_point__details__public_access_block *)

type aws_s3control_multi_region_access_point__details__region = {
  bucket : string prop;  (** bucket *)
  bucket_account_id : string prop option; [@option]
      (** bucket_account_id *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point__details__region *)

type aws_s3control_multi_region_access_point__details = {
  name : string prop;  (** name *)
  public_access_block :
    aws_s3control_multi_region_access_point__details__public_access_block
    list;
  region :
    aws_s3control_multi_region_access_point__details__region list;
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point__details *)

type aws_s3control_multi_region_access_point__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point__timeouts *)

type aws_s3control_multi_region_access_point = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  details : aws_s3control_multi_region_access_point__details list;
  timeouts : aws_s3control_multi_region_access_point__timeouts option;
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point *)

let aws_s3control_multi_region_access_point ?account_id ?id ?timeouts
    ~details __resource_id =
  let __resource_type = "aws_s3control_multi_region_access_point" in
  let __resource = { account_id; id; details; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_multi_region_access_point __resource);
  ()
