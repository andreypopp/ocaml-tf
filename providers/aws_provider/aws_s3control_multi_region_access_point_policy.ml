(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_multi_region_access_point_policy__details = {
  name : string;  (** name *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point_policy__details *)

type aws_s3control_multi_region_access_point_policy__timeouts = {
  create : string option; [@option]  (** create *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point_policy__timeouts *)

type aws_s3control_multi_region_access_point_policy = {
  account_id : string option; [@option]  (** account_id *)
  id : string option; [@option]  (** id *)
  details :
    aws_s3control_multi_region_access_point_policy__details list;
  timeouts :
    aws_s3control_multi_region_access_point_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point_policy *)

let aws_s3control_multi_region_access_point_policy ?account_id ?id
    ?timeouts ~details __resource_id =
  let __resource_type =
    "aws_s3control_multi_region_access_point_policy"
  in
  let __resource = { account_id; id; details; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_multi_region_access_point_policy
       __resource);
  ()
