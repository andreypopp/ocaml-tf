(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~vdm_enabled ~dashboard_attributes ~guardian_attributes
    __id =
  let __type = "aws_sesv2_account_vdm_attributes" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       vdm_enabled = Prop.computed __type __id "vdm_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sesv2_account_vdm_attributes
        (aws_sesv2_account_vdm_attributes ?id ~vdm_enabled
           ~dashboard_attributes ~guardian_attributes ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~vdm_enabled ~dashboard_attributes
    ~guardian_attributes __id =
  let (r : _ Tf_core.resource) =
    make ?id ~vdm_enabled ~dashboard_attributes ~guardian_attributes
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
