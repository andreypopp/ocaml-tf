(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_patch_baseline__approval_rule__patch_filter = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline__approval_rule__patch_filter *)

type aws_ssm_patch_baseline__approval_rule = {
  approve_after_days : float prop option; [@option]
      (** approve_after_days *)
  approve_until_date : string prop option; [@option]
      (** approve_until_date *)
  compliance_level : string prop option; [@option]
      (** compliance_level *)
  enable_non_security : bool prop option; [@option]
      (** enable_non_security *)
  patch_filter :
    aws_ssm_patch_baseline__approval_rule__patch_filter list;
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline__approval_rule *)

type aws_ssm_patch_baseline__global_filter = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline__global_filter *)

type aws_ssm_patch_baseline__source = {
  configuration : string prop;  (** configuration *)
  name : string prop;  (** name *)
  products : string prop list;  (** products *)
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline__source *)

type aws_ssm_patch_baseline = {
  approved_patches : string prop list option; [@option]
      (** approved_patches *)
  approved_patches_compliance_level : string prop option; [@option]
      (** approved_patches_compliance_level *)
  approved_patches_enable_non_security : bool prop option; [@option]
      (** approved_patches_enable_non_security *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  operating_system : string prop option; [@option]
      (** operating_system *)
  rejected_patches : string prop list option; [@option]
      (** rejected_patches *)
  rejected_patches_action : string prop option; [@option]
      (** rejected_patches_action *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  approval_rule : aws_ssm_patch_baseline__approval_rule list;
  global_filter : aws_ssm_patch_baseline__global_filter list;
  source : aws_ssm_patch_baseline__source list;
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline *)

let aws_ssm_patch_baseline ?approved_patches
    ?approved_patches_compliance_level
    ?approved_patches_enable_non_security ?description ?id
    ?operating_system ?rejected_patches ?rejected_patches_action
    ?tags ?tags_all ~name ~approval_rule ~global_filter ~source
    __resource_id =
  let __resource_type = "aws_ssm_patch_baseline" in
  let __resource =
    {
      approved_patches;
      approved_patches_compliance_level;
      approved_patches_enable_non_security;
      description;
      id;
      name;
      operating_system;
      rejected_patches;
      rejected_patches_action;
      tags;
      tags_all;
      approval_rule;
      global_filter;
      source;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_patch_baseline __resource);
  ()
