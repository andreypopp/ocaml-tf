(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dag_edge = {
  source : string prop;
  target : string prop;
  target_parameter : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dag_edge) -> ()

let yojson_of_dag_edge =
  (function
   | {
       source = v_source;
       target = v_target;
       target_parameter = v_target_parameter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_target_parameter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "target_parameter", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       `Assoc bnds
    : dag_edge -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dag_edge

[@@@deriving.end]

type dag_node__args = {
  name : string prop;
  param : bool prop option; [@option]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dag_node__args) -> ()

let yojson_of_dag_node__args =
  (function
   | { name = v_name; param = v_param; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_param with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "param", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : dag_node__args -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dag_node__args

[@@@deriving.end]

type dag_node = {
  id : string prop;
  line_number : float prop option; [@option]
  node_type : string prop;
  args : dag_node__args list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : dag_node) -> ()

let yojson_of_dag_node =
  (function
   | {
       id = v_id;
       line_number = v_line_number;
       node_type = v_node_type;
       args = v_args;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_args then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dag_node__args) v_args
           in
           let bnd = "args", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_node_type in
         ("node_type", arg) :: bnds
       in
       let bnds =
         match v_line_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "line_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : dag_node -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dag_node

[@@@deriving.end]

type aws_glue_script = {
  id : string prop option; [@option]
  language : string prop option; [@option]
  dag_edge : dag_edge list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dag_node : dag_node list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glue_script) -> ()

let yojson_of_aws_glue_script =
  (function
   | {
       id = v_id;
       language = v_language;
       dag_edge = v_dag_edge;
       dag_node = v_dag_node;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_dag_node then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dag_node) v_dag_node
           in
           let bnd = "dag_node", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dag_edge then bnds
         else
           let arg =
             (yojson_of_list yojson_of_dag_edge) v_dag_edge
           in
           let bnd = "dag_edge", arg in
           bnd :: bnds
       in
       let bnds =
         match v_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "language", arg in
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
       `Assoc bnds
    : aws_glue_script -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glue_script

[@@@deriving.end]

let dag_edge ?target_parameter ~source ~target () : dag_edge =
  { source; target; target_parameter }

let dag_node__args ?param ~name ~value () : dag_node__args =
  { name; param; value }

let dag_node ?line_number ~id ~node_type ~args () : dag_node =
  { id; line_number; node_type; args }

let aws_glue_script ?id ?language ~dag_edge ~dag_node () :
    aws_glue_script =
  { id; language; dag_edge; dag_node }

type t = {
  tf_name : string;
  id : string prop;
  language : string prop;
  python_script : string prop;
  scala_code : string prop;
}

let make ?id ?language ~dag_edge ~dag_node __id =
  let __type = "aws_glue_script" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       language = Prop.computed __type __id "language";
       python_script = Prop.computed __type __id "python_script";
       scala_code = Prop.computed __type __id "scala_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_script
        (aws_glue_script ?id ?language ~dag_edge ~dag_node ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?language ~dag_edge ~dag_node __id =
  let (r : _ Tf_core.resource) =
    make ?id ?language ~dag_edge ~dag_node __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
