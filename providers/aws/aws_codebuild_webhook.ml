(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter_group__filter = {
  exclude_matched_pattern : bool prop option; [@option]
      (** exclude_matched_pattern *)
  pattern : string prop;  (** pattern *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** filter_group__filter *)

type filter_group = { filter : filter_group__filter list }
[@@deriving yojson_of]
(** filter_group *)

type aws_codebuild_webhook = {
  branch_filter : string prop option; [@option]  (** branch_filter *)
  build_type : string prop option; [@option]  (** build_type *)
  id : string prop option; [@option]  (** id *)
  project_name : string prop;  (** project_name *)
  filter_group : filter_group list;
}
[@@deriving yojson_of]
(** aws_codebuild_webhook *)

let filter_group__filter ?exclude_matched_pattern ~pattern ~type_ ()
    : filter_group__filter =
  { exclude_matched_pattern; pattern; type_ }

let filter_group ~filter () : filter_group = { filter }

let aws_codebuild_webhook ?branch_filter ?build_type ?id
    ~project_name ~filter_group () : aws_codebuild_webhook =
  { branch_filter; build_type; id; project_name; filter_group }

type t = {
  branch_filter : string prop;
  build_type : string prop;
  id : string prop;
  payload_url : string prop;
  project_name : string prop;
  secret : string prop;
  url : string prop;
}

let make ?branch_filter ?build_type ?id ~project_name ~filter_group
    __id =
  let __type = "aws_codebuild_webhook" in
  let __attrs =
    ({
       branch_filter = Prop.computed __type __id "branch_filter";
       build_type = Prop.computed __type __id "build_type";
       id = Prop.computed __type __id "id";
       payload_url = Prop.computed __type __id "payload_url";
       project_name = Prop.computed __type __id "project_name";
       secret = Prop.computed __type __id "secret";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codebuild_webhook
        (aws_codebuild_webhook ?branch_filter ?build_type ?id
           ~project_name ~filter_group ());
    attrs = __attrs;
  }

let register ?tf_module ?branch_filter ?build_type ?id ~project_name
    ~filter_group __id =
  let (r : _ Tf_core.resource) =
    make ?branch_filter ?build_type ?id ~project_name ~filter_group
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
