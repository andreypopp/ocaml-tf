(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type dashboard_attributes = {
  engagement_metrics : string prop option; [@option]
      (** engagement_metrics *)
}
[@@deriving yojson_of]
(** dashboard_attributes *)

type guardian_attributes = {
  optimized_shared_delivery : string prop option; [@option]
      (** optimized_shared_delivery *)
}
[@@deriving yojson_of]
(** guardian_attributes *)

type aws_sesv2_account_vdm_attributes = {
  id : string prop option; [@option]  (** id *)
  vdm_enabled : string prop;  (** vdm_enabled *)
  dashboard_attributes : dashboard_attributes list;
  guardian_attributes : guardian_attributes list;
}
[@@deriving yojson_of]
(** aws_sesv2_account_vdm_attributes *)

let dashboard_attributes ?engagement_metrics () :
    dashboard_attributes =
  { engagement_metrics }

let guardian_attributes ?optimized_shared_delivery () :
    guardian_attributes =
  { optimized_shared_delivery }

let aws_sesv2_account_vdm_attributes ?id ~vdm_enabled
    ~dashboard_attributes ~guardian_attributes () :
    aws_sesv2_account_vdm_attributes =
  { id; vdm_enabled; dashboard_attributes; guardian_attributes }

type t = { id : string prop; vdm_enabled : string prop }

let register ?tf_module ?id ~vdm_enabled ~dashboard_attributes
    ~guardian_attributes __resource_id =
  let __resource_type = "aws_sesv2_account_vdm_attributes" in
  let __resource =
    aws_sesv2_account_vdm_attributes ?id ~vdm_enabled
      ~dashboard_attributes ~guardian_attributes ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_sesv2_account_vdm_attributes __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       vdm_enabled =
         Prop.computed __resource_type __resource_id "vdm_enabled";
     }
      : t)
  in
  __resource_attributes
