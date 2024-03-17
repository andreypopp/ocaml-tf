(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_s3control_multi_region_access_point_policy__details = {
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point_policy__details *)

type aws_s3control_multi_region_access_point_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point_policy__timeouts *)

type aws_s3control_multi_region_access_point_policy = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  details :
    aws_s3control_multi_region_access_point_policy__details list;
  timeouts :
    aws_s3control_multi_region_access_point_policy__timeouts option;
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point_policy *)

type t = {
  account_id : string prop;
  established : string prop;
  id : string prop;
  proposed : string prop;
}

let aws_s3control_multi_region_access_point_policy ?account_id ?id
    ?timeouts ~details __resource_id =
  let __resource_type =
    "aws_s3control_multi_region_access_point_policy"
  in
  let __resource =
    ({ account_id; id; details; timeouts }
      : aws_s3control_multi_region_access_point_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_s3control_multi_region_access_point_policy
       __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       established =
         Prop.computed __resource_type __resource_id "established";
       id = Prop.computed __resource_type __resource_id "id";
       proposed =
         Prop.computed __resource_type __resource_id "proposed";
     }
      : t)
  in
  __resource_attributes
