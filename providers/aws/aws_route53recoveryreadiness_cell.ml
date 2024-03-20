(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { delete : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_route53recoveryreadiness_cell = {
  cell_name : string prop;
  cells : string prop list option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53recoveryreadiness_cell) -> ()

let yojson_of_aws_route53recoveryreadiness_cell =
  (function
   | {
       cell_name = v_cell_name;
       cells = v_cells;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
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
         match v_cells with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "cells", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cell_name in
         ("cell_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_route53recoveryreadiness_cell ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53recoveryreadiness_cell

[@@@deriving.end]

let timeouts ?delete () : timeouts = { delete }

let aws_route53recoveryreadiness_cell ?cells ?id ?tags ?tags_all
    ?timeouts ~cell_name () : aws_route53recoveryreadiness_cell =
  { cell_name; cells; id; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  cell_name : string prop;
  cells : string list prop;
  id : string prop;
  parent_readiness_scopes : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?cells ?id ?tags ?tags_all ?timeouts ~cell_name __id =
  let __type = "aws_route53recoveryreadiness_cell" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cell_name = Prop.computed __type __id "cell_name";
       cells = Prop.computed __type __id "cells";
       id = Prop.computed __type __id "id";
       parent_readiness_scopes =
         Prop.computed __type __id "parent_readiness_scopes";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53recoveryreadiness_cell
        (aws_route53recoveryreadiness_cell ?cells ?id ?tags ?tags_all
           ?timeouts ~cell_name ());
    attrs = __attrs;
  }

let register ?tf_module ?cells ?id ?tags ?tags_all ?timeouts
    ~cell_name __id =
  let (r : _ Tf_core.resource) =
    make ?cells ?id ?tags ?tags_all ?timeouts ~cell_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
