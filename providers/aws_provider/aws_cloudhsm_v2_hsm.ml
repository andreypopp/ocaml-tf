(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudhsm_v2_hsm__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_hsm__timeouts *)

type aws_cloudhsm_v2_hsm = {
  cluster_id : string;  (** cluster_id *)
  timeouts : aws_cloudhsm_v2_hsm__timeouts option;
}
[@@deriving yojson_of]
(** aws_cloudhsm_v2_hsm *)

let aws_cloudhsm_v2_hsm ?timeouts ~cluster_id __resource_id =
  let __resource_type = "aws_cloudhsm_v2_hsm" in
  let __resource = { cluster_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudhsm_v2_hsm __resource);
  ()
