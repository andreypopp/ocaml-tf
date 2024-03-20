(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_route53recoveryreadiness_cell = {
  cell_name : string prop;  (** cell_name *)
  cells : string prop list option; [@option]  (** cells *)
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_route53recoveryreadiness_cell *)

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
