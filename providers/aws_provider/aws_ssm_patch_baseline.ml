(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_patch_baseline__approval_rule__patch_filter = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline__approval_rule__patch_filter *)

type aws_ssm_patch_baseline__approval_rule = {
  approve_after_days : float option; [@option]
      (** approve_after_days *)
  approve_until_date : string option; [@option]
      (** approve_until_date *)
  compliance_level : string option; [@option]
      (** compliance_level *)
  enable_non_security : bool option; [@option]
      (** enable_non_security *)
  patch_filter :
    aws_ssm_patch_baseline__approval_rule__patch_filter list;
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline__approval_rule *)

type aws_ssm_patch_baseline__global_filter = {
  key : string;  (** key *)
  values : string list;  (** values *)
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline__global_filter *)

type aws_ssm_patch_baseline__source = {
  configuration : string;  (** configuration *)
  name : string;  (** name *)
  products : string list;  (** products *)
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline__source *)

type aws_ssm_patch_baseline = {
  approved_patches : string list option; [@option]
      (** approved_patches *)
  approved_patches_compliance_level : string option; [@option]
      (** approved_patches_compliance_level *)
  approved_patches_enable_non_security : bool option; [@option]
      (** approved_patches_enable_non_security *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  operating_system : string option; [@option]
      (** operating_system *)
  rejected_patches : string list option; [@option]
      (** rejected_patches *)
  rejected_patches_action : string option; [@option]
      (** rejected_patches_action *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
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
