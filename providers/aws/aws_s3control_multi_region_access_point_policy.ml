(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type details = {
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** details *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_s3control_multi_region_access_point_policy = {
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  details : details list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_s3control_multi_region_access_point_policy *)

let details ~name ~policy () : details = { name; policy }
let timeouts ?create ?update () : timeouts = { create; update }

let aws_s3control_multi_region_access_point_policy ?account_id ?id
    ?timeouts ~details () :
    aws_s3control_multi_region_access_point_policy =
  { account_id; id; details; timeouts }

type t = {
  account_id : string prop;
  established : string prop;
  id : string prop;
  proposed : string prop;
}

let register ?tf_module ?account_id ?id ?timeouts ~details
    __resource_id =
  let __resource_type =
    "aws_s3control_multi_region_access_point_policy"
  in
  let __resource =
    aws_s3control_multi_region_access_point_policy ?account_id ?id
      ?timeouts ~details ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
