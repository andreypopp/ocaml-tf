(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type ui_template = { content : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : ui_template) -> ()

let yojson_of_ui_template =
  (function
   | { content = v_content } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : ui_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ui_template

[@@@deriving.end]

type aws_sagemaker_human_task_ui = {
  human_task_ui_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  ui_template : ui_template list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sagemaker_human_task_ui) -> ()

let yojson_of_aws_sagemaker_human_task_ui =
  (function
   | {
       human_task_ui_name = v_human_task_ui_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       ui_template = v_ui_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_ui_template v_ui_template
         in
         ("ui_template", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_human_task_ui_name
         in
         ("human_task_ui_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_sagemaker_human_task_ui ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sagemaker_human_task_ui

[@@@deriving.end]

let ui_template ?content () : ui_template = { content }

let aws_sagemaker_human_task_ui ?id ?tags ?tags_all
    ~human_task_ui_name ~ui_template () : aws_sagemaker_human_task_ui
    =
  { human_task_ui_name; id; tags; tags_all; ui_template }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
