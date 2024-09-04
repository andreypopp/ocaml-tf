(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type summaries__constraint_summaries = {
  description : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : summaries__constraint_summaries) -> ()

let yojson_of_summaries__constraint_summaries =
  (function
   | { description = v_description; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : summaries__constraint_summaries ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_summaries__constraint_summaries

[@@@deriving.end]

type summaries = {
  constraint_summaries : summaries__constraint_summaries list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  name : string prop;
  path_id : string prop;
  tags : string prop Tf_core.assoc;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : summaries) -> ()

let yojson_of_summaries =
  (function
   | {
       constraint_summaries = v_constraint_summaries;
       name = v_name;
       path_id = v_path_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_tags
         in
         ("tags", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path_id in
         ("path_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_constraint_summaries then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_summaries__constraint_summaries)
               v_constraint_summaries
           in
           let bnd = "constraint_summaries", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : summaries -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_summaries

[@@@deriving.end]

type aws_servicecatalog_launch_paths = {
  accept_language : string prop option; [@option]
  id : string prop option; [@option]
  product_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_servicecatalog_launch_paths) -> ()

let yojson_of_aws_servicecatalog_launch_paths =
  (function
   | {
       accept_language = v_accept_language;
       id = v_id;
       product_id = v_product_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_product_id in
         ("product_id", arg) :: bnds
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
         match v_accept_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "accept_language", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_servicecatalog_launch_paths ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_servicecatalog_launch_paths

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let aws_servicecatalog_launch_paths ?accept_language ?id ?timeouts
    ~product_id () : aws_servicecatalog_launch_paths =
  { accept_language; id; product_id; timeouts }

type t = {
  tf_name : string;
  accept_language : string prop;
  id : string prop;
  product_id : string prop;
  summaries : summaries list prop;
}

let make ?accept_language ?id ?timeouts ~product_id __id =
  let __type = "aws_servicecatalog_launch_paths" in
  let __attrs =
    ({
       tf_name = __id;
       accept_language = Prop.computed __type __id "accept_language";
       id = Prop.computed __type __id "id";
       product_id = Prop.computed __type __id "product_id";
       summaries = Prop.computed __type __id "summaries";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_servicecatalog_launch_paths
        (aws_servicecatalog_launch_paths ?accept_language ?id
           ?timeouts ~product_id ());
    attrs = __attrs;
  }

let register ?tf_module ?accept_language ?id ?timeouts ~product_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?accept_language ?id ?timeouts ~product_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
