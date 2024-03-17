(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudhsm_v2_hsm__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_hsm__timeouts *)

type aws_cloudhsm_v2_hsm = {
  availability_zone : string option; [@option]
      (** availability_zone *)
  cluster_id : string;  (** cluster_id *)
  id : string option; [@option]  (** id *)
  ip_address : string option; [@option]  (** ip_address *)
  subnet_id : string option; [@option]  (** subnet_id *)
  timeouts : aws_cloudhsm_v2_hsm__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_hsm *)

let aws_cloudhsm_v2_hsm ?availability_zone ?id ?ip_address ?subnet_id
    ?timeouts ~cluster_id __resource_id =
  let __resource_type = "aws_cloudhsm_v2_hsm" in
  let __resource =
    {
      availability_zone;
      cluster_id;
      id;
      ip_address;
      subnet_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudhsm_v2_hsm __resource);
  ()
