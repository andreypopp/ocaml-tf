(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ui_template = {
  content : string prop option; [@option]  (** content *)
}
[@@deriving yojson_of]
(** ui_template *)

type aws_sagemaker_human_task_ui = {
  human_task_ui_name : string prop;  (** human_task_ui_name *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  ui_template : ui_template list;
}
[@@deriving yojson_of]
(** aws_sagemaker_human_task_ui *)

let ui_template ?content () : ui_template = { content }

let aws_sagemaker_human_task_ui ?id ?tags ?tags_all
    ~human_task_ui_name ~ui_template () : aws_sagemaker_human_task_ui
    =
  { human_task_ui_name; id; tags; tags_all; ui_template }

type t = {
  arn : string prop;
  human_task_ui_name : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~human_task_ui_name ~ui_template __id =
  let __type = "aws_sagemaker_human_task_ui" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       human_task_ui_name =
         Prop.computed __type __id "human_task_ui_name";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_human_task_ui
        (aws_sagemaker_human_task_ui ?id ?tags ?tags_all
           ~human_task_ui_name ~ui_template ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~human_task_ui_name
    ~ui_template __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~human_task_ui_name ~ui_template __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
