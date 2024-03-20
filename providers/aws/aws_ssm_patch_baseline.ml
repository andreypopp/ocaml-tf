(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type approval_rule__patch_filter = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** approval_rule__patch_filter *)

type approval_rule = {
  approve_after_days : float prop option; [@option]
      (** approve_after_days *)
  approve_until_date : string prop option; [@option]
      (** approve_until_date *)
  compliance_level : string prop option; [@option]
      (** compliance_level *)
  enable_non_security : bool prop option; [@option]
      (** enable_non_security *)
  patch_filter : approval_rule__patch_filter list;
}
[@@deriving yojson_of]
(** approval_rule *)

type global_filter = {
  key : string prop;  (** key *)
  values : string prop list;  (** values *)
}
[@@deriving yojson_of]
(** global_filter *)

type source = {
  configuration : string prop;  (** configuration *)
  name : string prop;  (** name *)
  products : string prop list;  (** products *)
}
[@@deriving yojson_of]
(** source *)

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
  approval_rule : approval_rule list;
  global_filter : global_filter list;
  source : source list;
}
[@@deriving yojson_of]
(** aws_ssm_patch_baseline *)

let approval_rule__patch_filter ~key ~values () :
    approval_rule__patch_filter =
  { key; values }

let approval_rule ?approve_after_days ?approve_until_date
    ?compliance_level ?enable_non_security ~patch_filter () :
    approval_rule =
  {
    approve_after_days;
    approve_until_date;
    compliance_level;
    enable_non_security;
    patch_filter;
  }

let global_filter ~key ~values () : global_filter = { key; values }

let source ~configuration ~name ~products () : source =
  { configuration; name; products }

let aws_ssm_patch_baseline ?approved_patches
    ?approved_patches_compliance_level
    ?approved_patches_enable_non_security ?description ?id
    ?operating_system ?rejected_patches ?rejected_patches_action
    ?tags ?tags_all ~name ~approval_rule ~global_filter ~source () :
    aws_ssm_patch_baseline =
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

type t = {
  approved_patches : string list prop;
  approved_patches_compliance_level : string prop;
  approved_patches_enable_non_security : bool prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  json : string prop;
  name : string prop;
  operating_system : string prop;
  rejected_patches : string list prop;
  rejected_patches_action : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?approved_patches ?approved_patches_compliance_level
    ?approved_patches_enable_non_security ?description ?id
    ?operating_system ?rejected_patches ?rejected_patches_action
    ?tags ?tags_all ~name ~approval_rule ~global_filter ~source __id
    =
  let __type = "aws_ssm_patch_baseline" in
  let __attrs =
    ({
       approved_patches =
         Prop.computed __type __id "approved_patches";
       approved_patches_compliance_level =
         Prop.computed __type __id
           "approved_patches_compliance_level";
       approved_patches_enable_non_security =
         Prop.computed __type __id
           "approved_patches_enable_non_security";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       json = Prop.computed __type __id "json";
       name = Prop.computed __type __id "name";
       operating_system =
         Prop.computed __type __id "operating_system";
       rejected_patches =
         Prop.computed __type __id "rejected_patches";
       rejected_patches_action =
         Prop.computed __type __id "rejected_patches_action";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_patch_baseline
        (aws_ssm_patch_baseline ?approved_patches
           ?approved_patches_compliance_level
           ?approved_patches_enable_non_security ?description ?id
           ?operating_system ?rejected_patches
           ?rejected_patches_action ?tags ?tags_all ~name
           ~approval_rule ~global_filter ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?approved_patches
    ?approved_patches_compliance_level
    ?approved_patches_enable_non_security ?description ?id
    ?operating_system ?rejected_patches ?rejected_patches_action
    ?tags ?tags_all ~name ~approval_rule ~global_filter ~source __id
    =
  let (r : _ Tf_core.resource) =
    make ?approved_patches ?approved_patches_compliance_level
      ?approved_patches_enable_non_security ?description ?id
      ?operating_system ?rejected_patches ?rejected_patches_action
      ?tags ?tags_all ~name ~approval_rule ~global_filter ~source
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
