(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_sesv2_account_vdm_attributes__dashboard_attributes = {
  engagement_metrics : string prop option; [@option]
      (** engagement_metrics *)
}
[@@deriving yojson_of]
(** aws_sesv2_account_vdm_attributes__dashboard_attributes *)

type aws_sesv2_account_vdm_attributes__guardian_attributes = {
  optimized_shared_delivery : string prop option; [@option]
      (** optimized_shared_delivery *)
}
[@@deriving yojson_of]
(** aws_sesv2_account_vdm_attributes__guardian_attributes *)

type aws_sesv2_account_vdm_attributes = {
  id : string prop option; [@option]  (** id *)
  vdm_enabled : string prop;  (** vdm_enabled *)
  dashboard_attributes :
    aws_sesv2_account_vdm_attributes__dashboard_attributes list;
  guardian_attributes :
    aws_sesv2_account_vdm_attributes__guardian_attributes list;
}
[@@deriving yojson_of]
(** aws_sesv2_account_vdm_attributes *)

let aws_sesv2_account_vdm_attributes ?id ~vdm_enabled
    ~dashboard_attributes ~guardian_attributes __resource_id =
  let __resource_type = "aws_sesv2_account_vdm_attributes" in
  let __resource =
    { id; vdm_enabled; dashboard_attributes; guardian_attributes }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_account_vdm_attributes __resource);
  ()
