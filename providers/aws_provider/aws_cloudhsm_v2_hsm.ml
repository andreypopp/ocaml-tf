(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudhsm_v2_hsm__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_hsm__timeouts *)

type aws_cloudhsm_v2_hsm = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  timeouts : aws_cloudhsm_v2_hsm__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_hsm *)

type t = {
  availability_zone : string prop;
  cluster_id : string prop;
  hsm_eni_id : string prop;
  hsm_id : string prop;
  hsm_state : string prop;
  id : string prop;
  ip_address : string prop;
  subnet_id : string prop;
}

let aws_cloudhsm_v2_hsm ?availability_zone ?id ?ip_address ?subnet_id
    ?timeouts ~cluster_id __resource_id =
  let __resource_type = "aws_cloudhsm_v2_hsm" in
  let __resource =
    ({
       availability_zone;
       cluster_id;
       id;
       ip_address;
       subnet_id;
       timeouts;
     }
      : aws_cloudhsm_v2_hsm)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudhsm_v2_hsm __resource);
  let __resource_attributes =
    ({
       availability_zone =
         Prop.computed __resource_type __resource_id
           "availability_zone";
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       hsm_eni_id =
         Prop.computed __resource_type __resource_id "hsm_eni_id";
       hsm_id = Prop.computed __resource_type __resource_id "hsm_id";
       hsm_state =
         Prop.computed __resource_type __resource_id "hsm_state";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
     }
      : t)
  in
  __resource_attributes
